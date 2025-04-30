5+8
3+(4*5)
a <- 10
print(a)

3+5+8 # 덧셈

9-3 # 뺄셈

7*5 # 곱셈

8/3 # 나눗셈

8%%3 # 나머지

2^3 # 제곱

log(10)
log(10, base=2) # 로그함수

sqrt(36) # 제곱근

max(3,9,5) # 최대값

min(3,9,5) # 최소값

abs(-10) # 절대값

factorial(5) # 팩토리얼 연산

sin(pi/2) # 삼각함수수

a <- 10
b <- 20
c <- a+b
print(c)

a <- 10
b <- 20
a+b
a <- "A"
a+b # 문자와 숫자는 연산이 불가능하다

x <- c(1,2,3) # 숫자형 벡터
y <- c("a","b","c") # 문자형 벡터
z <- c(TRUE,TRUE,FALSE,TRUE) # 논리형 벡터
x
y
z

w <- c(1,2,3,"a","b","c")
w

v1 <- 50:90 # 벡터 생성과 같다
v1
v2 <- c(1,2,3, 50:90) # 벡터 안에 벡터를 만들면 하나의 벡터가 된다
v2

v3 <- seq(1,101,3)
v3
v4 <- seq(0.1,1.0,0.1)
v4

v5 <- rep(1,times=5)
v5
v6 <- rep(1:5,times=3)
v6
v7 <- rep(c(1,5,9),times=3)
v7

score <- c(90,85,70)
score
names(score)
names(score) <- c("John","Tom","Jane")
names(score)
score

d <- c(1,4,3,7,8)
d[1]
d[2]
d[3]
d[4]
d[5]
d[6]

d <- c(1,4,3,7,8)
d[c(1,3,5)] #1,3,5 번째 값 출력
d[1:3] # 처음 세 개의 값 출력
d[seq(1,5,2)] # 홀수 번째 값 출력력
d[-2] # 2번째 값 제외하고 출력
d[-c(3:5)] # 3~5번째 값은 제외하고 출력

GNP <- c(2090,2450,960)
GNP
names(GNP) <- c("Korea","Japan","Nepal")
GNP
GNP[1]
GNP["Korea"]
GNP[c("Korea","Nepal")]

v1 <- c(1,5,7,8,9)
v1
v1[2] <- 3
v1
v1[c(1,5)] <- c(10,20)
v1

d <- c(1,4,3,7,8)
2*d
d-5
3*d+4

x <- c(1,2,3)
y <- c(4,5,6)
x+y # 대응하는 원소끼리 더하여 출력
x*y # 대응하는 원소끼리 곱하여 출력
z <- x+y # x, y를 더하여 z에 저장장
z

d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d) # d에 포함된 값들의 합합
sum(2*d) # d에 포함된 값들에 2를 곱한 후 합한 값
length(d) # d에 포함된 값들의 개수
mean(d[1:5]) # 1~5번째 값들의 평균
max(d) # d의 값들 중 최대대값
min(d) # d의 값들 중 최소값
sort(d) # 오름차순 정렬
sort(d,decreasing = FALSE) # 오름차순 정렬
sort(d, decreasing = TRUE) # 내림차순 정렬

v1 <- median(d)
v1
v2 <- sum(d)/length(d)
v2

d <- c(1,2,3,4,5,6,7,8,9)
d>=5
d[d>5] # 5보다 큰 값
sum(d>5) # 5보다 큰 값의 개수를 출력
sum(d[d>5]) # 5보다 큰 값의 합계를 출력력
d==5

condi <- d>5 & d<8 # 조건을 변수에 저장
d[condi] # 조건에 맞는 값들을 선택

ds <- c(90,85,70,84)
my.info <- list(name='Tom',age=60,status=TRUE, score=ds)
my.info # 리스트에 저장된 내용을 모두 출력
my.info[[1]] # 리스트의 첫 번째 값을 출력력
my.info$name # 리스트에서 값의 이름이 name인 값을 출력
my.info[[4]] # 리스트의 네 번째 값을 출력

bt <- c('A','B','B','O','AB','A') # 문자형 벡터 bt 정의
bt.new <- factor(bt) # 팩터 bt.new 정의
bt
bt.new
bt[5]
bt.new[5]
levels(bt.new) # 팩터에 저장된 값의 종류를 출력
as.integer(bt.new) # 팩터의 문자값을 숫자로 바꾸어 출력력
bt.new[7] <- 'B'
bt.new[8] <- 'C'
bt.new

z <- matrix(1:20, nrow = 4,ncol = 5)
z

z2 <- matrix(1:20,nrow = 4,ncol = 5,byrow = T)
z2

x <- 1:4
y <- 5:8
z <- matrix(1:20,nrow = 4,ncol = 5)

m1 <- cbind(x,y) # x와 y를 열 방향으로 결합하여 매트릭스 생성
m1
m2 <- rbind(x,y) # x와 y를 행 방향으로 결합하여 매트릭스 생성
m2
m3 <- rbind(m2,x) # m2와 벡터 x 를 행 방향으로 결합
m3
m4 <- cbind(z,x) # z와 벡터 x 를 열 방향으로 결합
m4

z <- matrix(1:20,nrow = 4,ncol = 5)
z

z[2,3] # 2행 3열에 있는 값
z[1,4] # 1행 4열에 있는 값
z[2,] # 2행에 있는 모든 값
z[,4] # 4열에 있는 모든 값

z <- matrix(1:20,nrow = 4,ncol = 5)
z
z[2,1:3] # 2행의 값 중 1~3열에 있는 값
z[1,c(1,2,4)] # 1행의 값 중 1, 2, 4열에 있는 값
z[1:2,] # 1, 2행에 있는 모든 값
z[,c(1,4)] # 1, 4열에 있는 모든 값

score <-matrix(c(90,85,69,78,
                 85,96,49,95,
                 90,80,70,60),
               nrow = 4,ncol = 3)
score
rownames(score) <- c('John','Tom','Mark','Jane')
colnames(score) <- c('English','Math','Science')
score
# 이전 코드에 이어서 실행한다
score['John','Math'] # John의 수학 성적
score['Tom',c('Math','Science')] # Tom의 수학, 과학 성적
score['Mark',] # Mark의 모든 과목 성적
score[,'English'] # 모든 학생의 영어 성적
rownames(score)
colnames(score)
colnames(score)[2] # score 열 이름 중 두번째 값

city <- c("Seoul","Tokyo","Washington") # 문자 벡터
rank <- c(1,2,3) # 숫자 벡터
city.info <- data.frame(city,rank) # 데이터프레임 생성
city.info # 출력

iris

dim(iris) # 행과 열의 개수 출력
nrow(iris) # 행의 개수 출력
ncol(iris) # 열의 개수 출력
colnames(iris) # 열 이름 출력, names()와 결과 동일
head(iris) # 데이터셋의 앞부분 일부 출력
tail(iris) # 데이터셋의 뒷부분 일부 출력

str(iris) # 데이터셋 요약 정보 보기
iris[,5] # 품종 데이터 보기
unique(iris[,5]) # 품종의 종류 보기(중복 제거)
table(iris[,"Species"]) # 품종의 종류별 행의 개수 세기

colSums(iris[,-5]) # 열별 합계
colMeans(iris[,-5]) # 열별 평균
rowSums(iris[,-5]) # 행별 합계
rowMeans(iris[,-5]) # 행별 평균

z <- matrix(1:20, nrow = 4,ncol = 5)
z
t(z) # t() 함수를 사용하여 행과 열을 전환한다

IR.1 <- subset(iris, Species=="setosa")
IR.1
IR.2 <- subset(iris,Sepal.Length>5.0 &
                 Sepal.Width>4.0)
IR.2
IR.2[,c(2,4)] # 2, 4열의 값만 추출

a <- matrix(1:20,4,5)
b <- matrix(21:40,4,5)
a
b
2*a
b-5
2*a + 3*b
a+b
b-a
b/a
a*b

a <- a*3
b <- b-5

class(iris) # iris 자료구조 확인
class(state.x77) # state.x77 데이터셋의 자료구조 확인
is.matrix(iris) # 데이터셋이 매트릭스 인지를 확인하는 함수
is.data.frame(iris) # 데이터셋이 데이터프레임 인지를 확인하는 함수
is.matrix(state.x77)
is.data.frame(state.x77)

#매트릭스 -> 데이터프레임 변환
st <- data.frame(state.x77)
head(st)
class(st)

#데이터프레임 -> 매트릭스 변환
iris.m <- as.matrix(iris[,1:4])
head(iris.m)
class(iris.m)

iris[,"Species"] # 결과=벡터 매트릭스, 데이터프레임 모두 가능
iris[,5] # 결과=벡터 매트릭스, 데이터프레임 모두 가능
iris["Species"] # 결과=데이터프레임 데이터프레임 만 가능
iris[5] # 결과=데이터프레임 데이터프레임 만 가능
iris$Species # 결과=벡터 데이터프레임 만 가능

setwd("C:/")
air <- read.csv("airquality.csv",header = T)
head(air)

setwd("C:/source")
my.iris <- subset(iris, Species=='setosa')
write.csv(my.iris,"my_iris.csv",row.names=F)

job.type <- 'A'
if(job.type == 'B') {
  bonus <- 200
} else {
  bonus <- 100
}
print(bonus)

score <- 85
if(score>90){
  grade <- 'A'
} else if(score>80){
  grade <- 'B'
} else if(socre>70){
  grade <- 'C'
} else if(score>60){
  grade <- 'D'
} else {
  grade <- 'F'
}
print(grade)

a <- 10
b <- 20
if(a>5 & b>5) {
  print(a+b)
}
if(a>b|b>30) {
  print(a*b)
}

a <- 10
b <- 20
c <- ifelse(a>b,a,b) # c 변수에 ifelse 연산 결과값 저장장
print(c)
for(i in 1:5) {
  print('*')
}

for(i in 1:9) {
  cat('2 *',i,'=',2*i,'\n') # cat() 함수를 이용해 한줄에 여러개의 값을 결합하여 출력
}

for(i in 1:20) {
  if(i%%2==0) { # 짝수 확인인
    print(i)
  }
}

norow <- nrow(iris) # iris 행의 수
mylabel <- c() # 비어있는 벡터 생성성
for(i in 1:norow) {
  if(iris$Petal.Length[i] <= 1.6) { # 꽃잎 길이에 따라 레이블 결정
    mylabel[i] <- 'L'
  } else if (iris$Petal.Length[i] >= 5.1) {
    mylabel[i] <- 'H'
  } else {
    mylabel[i] <- 'M'
  }
}
  print(mylabel)
  newds <- data.frame(iris$Petal.Length, mylabel) # 꽃잎의 길이와 레이블 결합
  head(newds)
  
sum <- 0
i <- 1
while(i<=100) {
  sum <- sum+i
  i <- i+1
}
print(sum)

sum <- 0
for(i in 1:10) {
  sum <- sum+i
  if(i>=5) break
}
sum

sum <- 0
for(i in 1:10) {
  if(i%%2==0) next
  sum <- sum+i
}
sum

apply(iris[,1:4],1,mean) # row 방향 함수 적용
apply(iris[,1:4],2,mean) # col 방향 함수 적용

mymax <- function(x,y){
  num.max <- x
  if(y > x){
    num.max <- y
  }
  return(num.max)
}

mymax(10,15)
a <- mymax(20,15)
b <- mymax(31,45)
print(a+b)

mydiv <- function(x,y=2) {
  result <- x/y
  return(result)
}

mydiv(x=10,y=3) # 매개 변수 이름과 값 쌍으로 입력
mydiv(10,3) # 매개변수값만 입력
mydiv(10) # x에 대한 값만 입력(y 생략)

myfunc <- function(x,y) {
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum=val.sum, mul=val.mul))
}

result <- myfunc(5,8)
s <- result$sum
m <- result$mul
cat('5+8=',s,'\n')
cat('5*8=',m,'\n')

setwd("c:/source")
source("myfunc.R")

a <- mydiv(20,4)
b <- mydiv(30,4)
a+b
mydiv(mydiv(20,2))
b <- mydiv(30,4)
a+b
mydiv(mydiv(20,2),5)

favorite <- c('WINTER','SUMMER','SPRING','SUMMER','SUMMER',
              'FALL','FALL','SUMMER','SPRING','SPRING')
favorite
table(favorite) # 도수분포표 계산
table(favorite)/length(favorite) # 비율 출력

ds <- table(favorite)
ds
barplot(ds, main='favorite season')

png("barplot.png", width=800, height=600)
par(mar=c(5, 4, 6, 2) + 0.1)
barplot(ds, main='favorite season')
dev.off()

pie(ds,main='favorite season')

png("pie.png", width=800, height=600)
par(mar=c(5, 4, 6, 2) + 0.1)
pie(ds,main='favorite season')
dev.off()

favorite.color <- c(2,3,2,1,1,2,2,1,3,2,1,3,2,1,2)
ds <- table(favorite.color)
ds
barplot(ds, main='favorite color')
colors <- c('green','red','blue')
names(ds) <- colors # 자료값 1, 2 ,3을 green, red, blue로 변경
ds
par(mar=c(5, 4, 6, 2) + 0.1)
barplot(ds, main='favorite color', col=colors)
pie(ds,main='favorite color', col=colors)

weight <- c(60,62,65,64,68,69)
weight.heavy <- c(weight,120)
weight
weight.heavy

mean(weight)
mean(weight.heavy)

median(weight)
median(weight.heavy)

mean(weight, trim=0.2) # 절사평균 상하위 20% 제외
mean(weight.heavy,trim=0.2)

mydata <- c(60,62,64,65,68,69,120)
quantile(mydata)
quantile(mydata,(0:10)/10) # 10%의 구간을 나누어 계산 
summary(mydata)

mydata <- c(60,62,64,65,68,69,120)
var(mydata) # 분산
sd(mydata) # 표준편차
range(mydata) # 값의 범위
diff(range(mydata)) # 최댓값 최소값의 차이

dist <- cars[,2] # 자동차 제동거리
hist(dist, # 히스토그램 함수 사용
    main="Histogram for 제동거리", # 제목
    xlab = "제동거리", # x축 레이블
    ylab = "빈도수", # y축 레이블
    border = "blue", # 막대 테두리 색
    col = "green", # 막대 색
    las=2, # x축 글씨 방향(0~3)
    breaks=5) # 막대 개수 조절

dist <- cars[,2] # 자동차 제동거리
boxplot(dist, main="자동차 제동거리")

boxplot.stats(dist)

boxplot(iris$Petal.Length~iris$Species, main="품종별 꽃잎의 길이")

wt <- mtcars$wt # 중량 자료
mpg <- mtcars$mpg #연비 자료
plot(wt,mpg, # 변수 입력
     main="중량-연비 그래프",
     xlab="중량",
     ylab="연비",
     col="red", # point color
     pch=19) # point 종류

vars <- c("mpg","disp","drat","wt") # 대상 변수
target <- mtcars[,vars]
head(target)
pairs(target, # 대상 데이터
      main="Multi Plots",
      col="red",
      pch=19)

iris.2 <- iris[,3:4] # 데이터 준비
point <- as.numeric(iris$Species) #점의 모양
point
color <- c("red","green","blue") # 점의 컬러
plot(iris.2,
     main="Iris plot",
     pch=c(point),
     col=color[point])

beers <- c(5,2,9,8,3,7,3,5,3,5)
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,0.06,0.02,0.05)
tbl <- data.frame(beers,bal)
tbl
plot(bal~beers,data=tbl) # 산점도
res <- lm(bal~beers,data = tbl) # 회귀식 도출
abline(res) # 회귀선 그리기
cor(beers,bal) # 상관계수 계산

cor(iris[,1:4]) # 4개 변수 간 상관계수 계산(상관성 분석)

month <- 1:12
late <- c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month,
     late,
     main="지각생 통계",
     type="l", # 그래프의 종류
     lty=1, # 선의 종류
     lwd=1, # 선의 굵기
     xlab="Month",
     ylab="Late Count")

month <- 1:12
late1 <- c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 <- c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month,
     late1,
     main="지각생 통계",
     type="l", # 그래프의 종류
     lty=1, # 선의 종류
     lwd=1, # 선의 굵기
     xlab="Month",
     ylab="Late Count",
     ylim=c(1,15)) # y 축값의 (하한, 상한)
lines(month,
      late2,
      type = "b",
      col = "blue")

library(mlbench)
data("BostonHousing")
myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]

grp <- c()
for (i in 1:nrow(myds)) {
  if(myds$medv[i]>=25.0){
    grp[i] <- "H"
  } else if (myds$medv[i]<=17.0){
    grp[i] <- "L"
  } else {
    grp[i] <- "M"
  }
}
grp <- factor(grp) # 문자 벡터를 팩터 타입으로 변경
grp <- factor(grp, levels = c("H","M","L")) # 레벨의 순서 변경

myds <- data.frame(myds, grp) # grp열 추가

str(myds)

head(myds)

table(myds$grp)
par(mfrow=c(2,3)) # 2x3 가상화면 분할
for(i in 1:5) {
  hist(myds[,i],main=colnames(myds)[i],col="yellow")
}
par(mfrow=c(1,1)) # 가상화면 분할 해제

par(mfrow=c(2,3)) # 2x3 가상화면 분할
for(i in 1:5) {
  boxplot(myds[,i],main=colnames(myds)[i])
}
par(mfrow=c(1,1)) # 가상화면 분할 해제

boxplot(myds$crim~myds$grp,main="1인당 범죄율")

boxplot(myds$rm~myds$grp,main="방의 개수")

boxplot(myds$tax~myds$grp,main="재산세율")

pairs(myds[,-6])

point <- as.integer(myds$grp)
color <- c("red","green","blue")
pairs(myds[,-6],pch=point,col=color[point])

cor(myds[,-6])

z <- c(1,2,3,NA,5,NA,8) # NA로 결측값을 포함
sum(z) # 정상 계산이 불가
is.na(z) # NA 여부 확인
sum(is.na(z)) # NA의 개수 확인
sum(z,na.rm=TRUE) # NA를 제외하고 합계를 계산

z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(1,7,3,NA,5,NA,8)
z1[is.na(z1)] <- 0 # 결측값을 0으로 치환
z1
z3 <- as.vector(na.omit(z2)) # 결측값 제거 후 새로운 백터 생성
z3

x <- iris
x[1,2] <- NA; x[1.3] <- NA
x[2,3] <- NA; x[3,4] <- NA
head(x)

# for문 이용
for(i in 1:ncol(x)) {
  this.na <- is.na(x[,i])
  cat(colnames(x)[i],"\t",sum(this.na),"\n")
}

# apply 이용
col_na <- function(y) {
  return(sum(is.na(y)))
}

na_count <- apply(x, 2, FUN = col_na)
na_count

x <- iris
x[1,2] <- NA; x[1,3] <- NA
x[2,3] <- NA; x[3,4] <- NA
head(x)

rowSums(is.na(x))
sum(rowSums((is.na(x)))>0)

sum(is.na(x))

head(x)
x[!complete.cases(x),] # 결측값 포함 행 출력
y <- x[complete.cases(x),] # 결측값 포함 행 제거
head(y)

st <- data.frame(state.x77)
boxplot(st$Income)
boxplot.stats(st$Income)$out

out.val <- boxplot.stats(st$Income)$out # 특이값 추출
st$Income[st$Income %in% out.val] <- NA # 특이값을 결측값으로 대체
head(st)
newdata <- st[complete.cases(st),] # 결측값 포함 행 제거
head(newdata)

v1 <- c(1,7,6,8,4,2,3)
order(v1)
v1 <- sort(v1)
v1
v2 <- sort(v1,decreasing = T)
v2

head(iris)
iris[order(iris$Sepal.Length),] # 오름차 순
iris[order(iris$Sepal.Length,decreasing = T),] # 내림차 순
iris.new <- iris[order(iris$Sepal.Length),] # 정렬된 데이터를 저장
head(iris.new)
iris[order(iris$Species, -iris$Petal.Length,decreasing = T),] # 정렬 기준 2개

sp <- split(iris, iris$Species) # 품종별로 데이터 분리
sp # 분리 결과 확인 
summary(sp) # 분리 결과 요약
sp$setosa # setosa 품종 데이터 확인

subset(iris, Species == "setosa")
subset(iris, Sepal.Length > 7.5)
subset(iris, Sepal.Length > 5.1  & Sepal.Width> 3.9)
subset(iris, Sepal.Length > 7.6, select=c(Petal.Length, Petal.Width))

x <- 1:100
y <- sample(x,size = 10, replace = FALSE) # 비복원 추출 설정
y

idx <- sample(1:nrow(iris),size=50,replace = FALSE)
iris.50 <- iris[idx,] # 50개 행 추출
dim(iris.50)
head(iris.50)

sample(1:20, size=5)
sample(1:20, size=5)
sample(1:20, size=5)

set.seed(100)
sample(1:20, size=5)
set.seed(100)
sample(1:20, size=5)
set.seed(100)
sample(1:20, size=5)

combn(1:5,3)# 1~5에서 3개를 뽑는 조합
x = c("red","green","blue","black","white")
com <- combn(x,2) # 원소를 2개씩 뽑는 조합
com

for(i in 1:ncol(com)) { # 조합 출력력
  cat(com[,i],"\n")
}

agg <- aggregate(iris[,-5], # 집계 작업 대상 지정
                 by=list(품종=iris$Species), # 집계 작업 기준 열의 값
                 FUN = mean # 집계 작업 내용 평균 계산
                 )
agg

agg <- aggregate(iris[,-5], # 집계 작업 대상 지정
                 by=list(표준편차=iris$Species), # 집계 작업 기준 열의 값
                 FUN = sd # 집계 작업 내용 표준 편차 계산
)
agg

head(mtcars)
agg <- aggregate(mtcars, by=list(cyl=mtcars$cyl,
                 vs=mtcars$vs),FUN=max)
agg

x <- data.frame(name=c("a","b","c"), math=c(90,80,40))
y <- data.frame(name=c("a","b","c"), korean=c(75,60,90))
x
y

z <- merge(x,y, by=c("name"))
z

merge(x,y, all.x=T) # 첫 번째 데이터셋의 행들은 모두 표시되도록
merge(x,y, all.y=T) # 두 번째 데이터셋의 행들은 모두 표시되도록
merge(x,y, all=T) # 두 데이터셋의 행들이 모두 표시되도록

x <- data.frame(name=c("a","b","c"), math=c(90,80,40))
y <- data.frame(sname=c("a","b","d"), korean=c(75,60,90))
x # 병합 기준 열의 이름이 name
y # 병합 기준 열의 이름이 sname
merge(x,y,by.x=c("name"),by.y=c("sname"))

install.packages("treemap")

library(treemap)
data(GNI2014)
head(GNI2014)
treemap(GNI2014,
        index=c("continent","iso3"),
        vSize="population",
        vColor="GNI",
        type="value",
        bg.labels="yellow",
        title="World's GNI")

st <- data.frame(state.x77)
st <- data.frame(st, stname=rownames(st))

treemap(st,
        index=c("stname"),
        vSize="Area",
        vColor = "Income",
        type = "value",
        title = "USA statesarea and income")

st <- data.frame(state.x77)
symbols(st$Illiteracy, st$Murder, # 원의 x, y 좌표의 열
         circles=st$Population, # 원의 반지름의 열
         inches=0.3, # 원의 크기 조절값
        fg = "white", # 원의 테두리 색
        bg="lightgray", # 원의 바탕색
        lwd=1.5, # 원의 테두리선 두께
        xlab = "rate of Illiteracy",
        ylab = "Illiteracy and Crime")
text(st$Illiteracy,st$Murder, # 출력될 x, y 좌표
     rownames(st), # 출력 텍스트
     cex=0.6, # 폰트 크기
     col="brown") # 폰트 컬러

head(mtcars)
mosaicplot(~gear+vs, data=mtcars,color=TRUE, main = "Gear And Vs")

mosaicplot(~gear+vs, data=mtcars,color=c("green","blue"), main = "Gear And Vs")

admissions <- as.data.frame(UCBAdmissions)
library(dplyr)
gender_admit <- admissions %>%
  group_by(Gender, Admit) %>%
  summarise(Total = sum(Freq), .groups = 'drop')
mosaicplot(
  xtabs(Total ~ Gender + Admit, data = gender_admit),
  main = "성별별 합격률",
  color = c("lightblue", "pink")
)
UCBAdmissions
mosaicplot(
  xtabs(Total ~ Gender + Admit, data = UCBAdmissions),
  main = "성별별 합격률",
  color = c("lightblue", "pink")
)

install.packages("ggplot2")

library(ggplot2)

month <- c(1,2,3,4,5,6)
rain <- c(55,50,45,50,60,70)
df <- data.frame(month,rain)
df

ggplot(df, aes(x=month, y=rain)) 
  geom_bar(stat="identity",
           width = 0.7,
           fill="steelblue")
  
ggplot(df, aes(x=month,y=rain))+
  geom_bar(stat="identity",
           width = 0.7,
           fill="steelblue")+
  ggtitle("월별 강수량") +
  theme(plot.title = element_text(size=25, face="bold",colour = "steelblue"))+ 
  labs(x="월",y="강수량")+
  coord_flip()

ggplot(iris, aes(x=Petal.Length))+
  geom_histogram(binwidth = 0.5)

ggplot(iris, aes(x=Sepal.Width, fill=Species, color = Species))+
 geom_histogram(binwidth = 0.5, position = "dodge")+
  theme(legend.position = "top")

ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width))+
  geom_point()

ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width,color=Species))+
  geom_point(size=3)+
  ggtitle("꽃잎의 길이와 폭")+
  theme

ggplot(data=iris, aes(y=Petal.Length))+
  geom_boxplot(fill="yellow")

ggplot(data=iris, aes(y=Petal.Length, fill=Species))+
  geom_boxplot()

year <- 1937:1960
cnt <- as.vector(airmiles)
df <- data.frame(year,cnt)
head(df)

ggplot(data=df, aes(x=year, y=cnt))+
  geom_line(col="red")

install.packages("Rtsne")

library(Rtsne)
library(ggplot2)

ds <- iris[,-5]

dup = which(duplicated(ds))
dup
ds <- ds[-dup,]
ds.y <- iris$Species[-dup] # 중복 데이터 제거 작업
tsne <- Rtsne(ds,dims=2,perplexity=10)

df.tsne <- data.frame((tsne$Y))
head(df.tsne)
ggplot(df.tsne, aes(x=X1, y=X2, color=ds.y))+
  geom_point(size=2)
install.packages(c("rgl","car"))

library("car")
library("rgl")
library("mgcv")

tsne <- Rtsne(ds,dims=3,perplexity=10)
df.tsne <- data.frame(tsne$Y)
head(df.tsne)

scatter3d(x=df.tsne$X1, y=df.tsne$X2, z=df.tsne$X3)

points <- as.integer(ds.y)
color <- c('red','green','blue')
scatter3d(x=df.tsne$X1, y=df.tsne$X2,z=df.tsne$X3,
          point.col=color[points],
surface=FALSE)

install.packages("ggmap")

library(ggmap)
register_google(key = 'API')

gc <- geocode(enc2utf8("종로구")) # 경도 위도 
gc
cen <- as.numeric(gc) # 경도 위도를 숫자로
cen
map <- get_googlemap(center=cen,maptype = "satellite") # 지도 생성 후 중심 좌표 종로구 경도 위도 좌표로
ggmap(map)

head(cars)
plot(dist~speed, data=cars) # 산점도를 통해 선형 관계 확인

model <- lm(dist~speed,cars) # 회귀 모델 구하기
model

abline(model) # 회귀선을 산점도 위에 표시 
coef(model)[1] # b값 출력

b <- coef(model)[1]
W <- coef(model)[2]

speed <- 30
dist <- W*speed + b
dist

speed <- 35
dist <- W*speed + b
dist

speed <- 40
dist <- W*speed + b
dist

speed <- cars[,1]
pred <- W*speed+b
pred # 예상 제동거리

compare <- data.frame(pred, cars[,2],pred-cars[,2])
colnames(compare) <- c("예상","실제","오차")
head(compare)

library(car)
head(Prestige)
newdata <- Prestige[,(1:4)]
plot(newdata, pch=16, col="blue",
     main="Matrix Scatterplot")

mod1 <- lm(income~education+prestige+women, data=newdata)
summary(mod1)

iris.new <- iris
iris.new$Species <- as.integer(iris.new$Species) # 범주형 자료 정수로 변환 
head(iris.new)
mod.iris <- glm(Species~., data=iris.new) # 로지스틱 회귀모델 도출
summary(mod.iris) # 회귀모델의 상세 내용 확인

unknown <- data.frame(rbind(c(5.1,3.5,1.4,0.2)))
names(unknown) <- names(iris)[1:4]
unknown

pred <- predict(mod.iris, unknown) # 품종 예측
pred # 예측 결과 출력
round(pred,0) # # 소수 첫째 자리 반올림 예측 결과 출력

pred <- round(pred,0)
pred
levels(iris$Species)
levels(iris$Species)[pred]

test <- iris[,1:4] # 데이터 준비
pred <- predict(mod.iris, test) # 모델을 이용한 예측
pred <- round(pred,0)
pred
answer <- as.integer(iris$Species) # 실제 품종 정보
pred == answer # 예측과 실제가 같은지 비교
acc <- mean(pred == answer) # 예측 정확도 계산
acc # 정확도 출력

mydata <- iris[,1:4] # 데이터 준비
fit <- kmeans(x=mydata, centers = 3)
fit
fit$cluster # 각 데이터에 대한 군집 번호
fit$centers # 각 군집의 중심점 좌표

# 차원 축소 후 군집 시각화
library(cluster)
clusplot(mydata, fit$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)

subset(mydata,fit$cluster==2) # 데이터에서 두번째 군집 데이터만 추출

std <- function(X) {
  return ((X-min(X))/(max(X)-min(X)))
}

mydata <- apply(iris[,1:4], 2, std)
fit <- kmeans(x=mydata,centers = 3)
fit

library(class)

tr.idx <- c(1:25,51:75,101:125)
ds.tr <- iris[tr.idx,1:4]
ds.ts <- iris[-tr.idx,1:4]
cl.tr <- factor(iris[tr.idx,5])
cl.ts <- factor(iris[-tr.idx,5])

pred <- knn(ds.tr, ds.ts, cl.tr,k=3,prob = TRUE)
pred

acc <- mean(pred==cl.ts) # 예측 정확도
acc

table(pred,cl.ts)

install.packages("cvTools")

library(cvTools)
k=10
folds <- cvFolds(nrow(iris),K=10)

acc <- c()
for(i in 1:k) {
  ts.idx <- folds$which == i
  ds.tr <- iris[-ts.idx, 1:4]
  ds.ts <- iris[ts.idx,1:4]
  
  cl.tr <- factor(iris[-ts.idx,5])
  cl.ts <- factor(iris[ts.idx,5])
  pred <- knn(ds.tr, ds.ts, cl.tr,k=5)
  acc[i] <- mean(pred==cl.ts)
}
acc
mean(acc)

install.packages("party")
install.packages("tree")

idx <- sample(2, nrow(iris), replace = TRUE, prob = c(0.7,0.3))
train.data <- iris[idx == 2,]
test.data <- iris[idx == 1,]

library(party)
result <- ctree(Species~., data=train.data)
plot(result, type="simple")

table(predict(result),train.data$Species)

test.predict <- predict(result, newdata=test.data)
table(test.predict,test.data$Species)

library(tree)
result <- tree(Species~., iris)
plot(result)
text(result)

# 1. 데이터 준비
data(iris)  # 붓꽃 데이터 로드
iris_data <- iris[, -5]  # 종(Species) 변수 제거

# 2. 거리 행렬 계산 (유클리드 거리)
dist_matrix <- dist(iris_data, method = "euclidean")

# 3. 계층적 군집분석 수행 (Ward.D2 방법)
hc_result <- hclust(dist_matrix, method = "ward.D2")

# 4. 덴드로그램 시각화
plot(hc_result, 
     labels = iris$Species,  # 실제 종 정보 라벨링
     main = "붓꽃 데이터 계층적 군집분석",
     xlab = "샘플 번호",
     ylab = "군집 거리")

# 5. 3개 군집 경계 표시
rect.hclust(hc_result, k = 3, border = c("red", "blue", "green"))

# 패키지 설치
install.packages("nnet")
library(nnet)

# 데이터 준비
data(iris)
set.seed(123)

# 종 변수 팩터화
iris$Species <- as.factor(iris$Species)

# 데이터 분할
train_idx <- sample(1:nrow(iris), 0.8*nrow(iris))
train <- iris[train_idx,]
test <- iris[-train_idx,]

# 신경망 모델 학습
model <- nnet(Species ~ ., 
              data = train,
              size = 10,    # 은닉층 뉴런 수
              decay = 0.01, # 가중치 감소
              MaxNWts = 200,# 최대 가중치 수
              maxit = 1000) # 최대 반복 횟수

# 예측 및 평가
predictions <- predict(model, test, type="class")
conf_matrix <- table(test$Species, predictions)
accuracy <- sum(diag(conf_matrix))/sum(conf_matrix)

print(paste("정확도:", round(accuracy, 4)))

install.packages("NeuralNetTools")

library(NeuralNetTools)

plotnet(model)  # 네트워크 구조 시각화[6]

# 1. nnet 적합 결과 시각화[6]
plot(net.infert)  # 기본 구조 출력

# 2. 신경망 예측값 비교
out <- cbind(net.infert$covariate, net.infert$net.result)
plot(out[,1], out[,5], xlab="실제값", ylab="예측값")

# 3. caret 패키지와 조합
install.packages("caret")
library(caret)
varImp(model)  # 변수 중요도 플롯
summary(model)

library(MASS)
data(hills)
hills

step(lm(time ~1,hills), scope=list(lower~1,upper=~dist+climb),direction="forward")

# R 예제: iris 데이터 의사결정나무
library(rpart)
model <- rpart(Species ~ ., data=iris)
plot(model); text(model)  # 트리 시각화[^6^]

install.packages("rpart.plot")

library(rpart)
library(rpart.plot)

# 모델 생성
rpart_model <- rpart(Species ~ ., data=iris, method="class")

# 시각화
prp(rpart_model, type=4, extra=2)  # rpart.plot 패키지 필요
printcp(rpart_model)  # CP값 확인

library(tree)

# 모델 생성
tree_model <- tree(Species ~ ., data=iris)


# 가지치기
pruned_tree <- prune.tree(tree_model, best=3)
plot(pruned_tree)
# 시각화
plot(tree_model); text(tree_model, cex=0.8)

library(party)

# 모델 생성 (범주 31개 제한 주의)
ctree_model <- ctree(Species ~ ., data=iris)

# 시각화
plot(ctree_model, type="simple")

# 패키지 설치
install.packages("e1071")
library(e1071)

# 데이터 불러오기
data(iris)
set.seed(123)  # 재현성 확보

# 70% 학습, 30% 테스트 분할
train_index <- sample(1:nrow(iris), nrow(iris)*0.7)
train_set <- iris[train_index, ]
test_set <- iris[-train_index, ]

svm_model <- svm(
  Species ~ ., 
  data = train_set, 
  kernel = "linear", 
  cost = 1,  # 오분류 패널티
  scale = TRUE  # 변수 표준화
)

# 모델 요약
print(svm_model)

# 테스트 데이터 예측
predicted <- predict(svm_model, test_set)

# 혼동 행렬
table(Predicted = predicted, Actual = test_set$Species)

# 정확도 계산
accuracy <- mean(predicted == test_set$Species)
cat("정확도:", round(accuracy*100, 2), "%\n")

# Petal.Length/Petal.Width만 사용
svm_2d <- svm(
  Species ~ Petal.Length + Petal.Width,
  data = iris,
  kernel = "linear"
)

# 결정 경계 플롯
plot(svm_2d, iris, Petal.Width ~ Petal.Length, 
     slice = list(Petal.Width = 1, Petal.Length = 2))