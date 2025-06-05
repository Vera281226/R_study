library(RMySQL)

# 데이터베이스 연결
con <- dbConnect(MySQL(),
                 user="root",
                 password="123",
                 dbname="Cinemap",
                 host="localhost")

query <- "SELECT movie_id, cont, rating FROM review"
reviews <- dbGetQuery(con, query)

reviews$review_clean <- gsub("[[:punct:]]", "", reviews$cont)
reviews$review_clean <- gsub("\\d+", "", reviews$review_clean)

library(KoNLP)
library(tm)

# KoNLP 설정 (NIADic 사용)
useNIADic()

# 명사 추출 함수 적용
reviews$morpheme <- sapply(reviews$review_clean, function(x) {
  paste(extractNoun(x), collapse=" ")
})

# 텍스트 전처리 추가
corpus <- Corpus(VectorSource(reviews$morpheme))
corpus <- tm_map(corpus, removeWords, c("영화", "정도", "그", "이", "저", "것", "수", "들", "때", "더", "좀", "한", "하다", "되다", "이다", "있다", "의", "가", "을", "를", "으로", "에", "에서", "하고"))  # 직접 정의한 불용어 사용
dtm <- DocumentTermMatrix(corpus)

# 빈도수 상위 20개 단어 추출
word_freq <- colSums(as.matrix(dtm))
head(sort(word_freq, decreasing=TRUE), 20)

# 워드클라우드 생성
install.packages("wordcloud2")
library(wordcloud2)

# 감정사전 로드 (수동 생성 필요)
pos_words <- c("좋다", "최고", "훌륭", "재미있", "감동", "사랑", "행복", "완벽", "아름답")
neg_words <- c("별로", "실망", "지루", "최악", "부족", "아쉽", "노잼", "낭비", "싫다")

# 감정 점수 계산 함수
get_sentiment_score <- function(text) {
  positive_count <- sum(sapply(pos_words, function(x) grepl(x, text)))
  negative_count <- sum(sapply(neg_words, function(x) grepl(x, text)))
  return(positive_count - negative_count)
}

# 감정 분석 적용
reviews$sentiment <- sapply(reviews$review_clean, get_sentiment_score)
reviews$sentiment_label <- ifelse(reviews$sentiment > 0, "긍정", 
                                  ifelse(reviews$sentiment < 0, "부정", "중립"))

# 긍정/부정 코퍼스 분리
pos_corpus <- Corpus(VectorSource(reviews$morpheme[reviews$sentiment_label == "긍정"]))
neg_corpus <- Corpus(VectorSource(reviews$morpheme[reviews$sentiment_label == "부정"]))

# 공통 전처리 함수
preprocess_corpus <- function(corpus) {
  corpus <- tm_map(corpus, removeWords, c("영화", "정도", "그", "이", "저", "것", "수", "들", "때", "더", "좀", "한", "하다", "되다", "이다", "있다", "의", "가", "을", "를", "으로", "에", "에서", "하고"))
  return(corpus)
}

pos_corpus <- preprocess_corpus(pos_corpus)
neg_corpus <- preprocess_corpus(neg_corpus)

# DTM 생성
pos_dtm <- DocumentTermMatrix(pos_corpus)
neg_dtm <- DocumentTermMatrix(neg_corpus)

# 빈도수 계산
pos_freq <- colSums(as.matrix(pos_dtm))
neg_freq <- colSums(as.matrix(neg_dtm))

# 워드클라우드 생성
par(mfrow=c(1,2))  # 화면 분할 (1행 2열)

# 긍정 워드클라우드
wordcloud2(data.frame(word=names(pos_freq), freq=pos_freq), 
           color="green", backgroundColor="black", size=1.2)

# 부정 워드클라우드
wordcloud2(data.frame(word=names(neg_freq), freq=neg_freq), 
           color="red", backgroundColor="black", size=1.2)
