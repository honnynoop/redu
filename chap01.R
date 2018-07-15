
# 1 R 
#1.3
attach(mtcars) 
plot(wt, mpg)
abline(lm(mpg~wt))
title("MPG vs. Weight에 대한 회귀")
detach(mtcars)

#dev.new()
plot(mtcars$wt, mtcars$mpg)
abline(lm(mtcars$mpg~mtcars$wt))
title("MPG vs. Weight에 대한 회귀")


require(graphics)
pairs(mtcars, main = "mtcars data")
coplot(mpg ~ disp | as.factor(cyl), data = mtcars,
       panel = panel.smooth, rows = 1)

#1.4
help()
help(mtcars)
help(plot)
help("for")
help(c)

mtcars
help(mtcars)

#1.5
data()
str(mtcars)
head(mtcars)
tail(mtcars)

#1.6
R패키지 = 처리할 데이터 + 기능 + 알고리즘 
install.packages("패키지명")
libary(패키지명)
require(패키지명)


------분석용
rattle(https://rattle.togaware.com)
https://rattle.togaware.com/rattle-install-troubleshooting.html


Windows
> install.packages("rattle")
> install.packages("https://cran.r-project.org/bin/windows/contrib/3.3/RGtk2_2.20.31.zip", repos=NULL)

-- rattle 사용법
https://data-mining-tutorials.blogspot.com/2011/08/data-mining-with-r-rattle-package.html


a <- "hello"
b <- charToRaw(a)
c<- rawToChar(b)
rawToChar(as.raw(68))

#2.5
#2.5.1 vector
a<-TRUE

num<-c(1, 2, 3, 4, 5)
num2<-c(1:5)
num3<-c(seq(1,5))
length<-c(3.5, 3.0, 3.2, 3.1, 3.6, 3.9, 3.4, 3.4, 2.9, 3.1, 3.7, 3.4, 3.0, 3.0, 4.0)
name<-c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width","Species")

num[1]
name[2]

x<-c(1, 2, 3, 4, 5)
x[1] 
x[-1] 
x[1:3] 
x[-(1:3)]     #제거
x[c(1,4,2)] 
x[x > 3] 
x[x > 3 & x < 5] 
name["Species" %in% name] 


c1<-c(1:5)
c2<-logical(5) 
c3<-numeric(5) 
c4<-complex(5)
c5<-character(5) 

> c1<-c(1:5)
> c2<-logical(5) 
> c3<-numeric(5) 
> c4<-complex(5)
> c5<-character(5) 
> c1
[1] 1 2 3 4 5
> c2
[1] FALSE FALSE FALSE FALSE FALSE
> c3
[1] 0 0 0 0 0
> c4
[1] 0+0i 0+0i 0+0i 0+0i 0+0i
> c5
[1] "" "" "" "" ""


#2.5.2 matrix
x0<-matrix(1:15, nrow=5, ncol=3, byrow=F)
x1<-matrix(1:15, 5, 3)
x2<-matrix(1:15, 5, 3, F)
x3<-matrix(1:15, 5, 3, T)

x0[1,]
x0[,1]
x0[1,1]

length<-c(3.5, 3.0, 3.2, 3.1, 3.6, 3.9, 3.4, 3.4, 2.9, 3.1, 3.7, 3.4, 3.0, 3.0, 4.0)
cname<-c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width","Species")
rname<-c("C1","C2","C3")
x4<-matrix(length, 3, 5, T, list(rname,cname))
x5<-matrix(length, 3, 5, F, list(rname,cname))

page<-c("P1","P2")

#2.5.3 array
ar0<-array(1:30,c(3,5,2), list(rname,cname,page)) #3x5x2
array(1:4, c(3,5))

#2.5.4 list
li0<-list(rname,cname)
li1<-list(rowname=rname,colname=cname)
li0[[2]]
s<-li0[[2]][1]
s
t<-li1[["colname"]][1]
t

u<-li1$colname
u
v<-li1$colname[1]
v


#2.5.5 dataframe
irid<-c(1,4,51,97,101,103)
irslen<-c(5.1,4.6,7.0,5.7,6.3,7.1)
irswid<-c(3.5,3.1,3.2,2.9,3.3,3.0)
irplen<-c(1.4,1.5,4.7,4.2,6.0,5.9)
irpwid<-c(0.2,0.2,1.4,1.3,2.5,2.1)
species<-c("setosa","setosa","versicolor","versicolor","virginica","virginica")
irdf<-data.frame(irid,irslen,irswid,irplen,irpwid,species)
irdf
str(irdf)
summary(irdf)

s<-sum(irdf$irslen)
t<-length(irdf$irslen)
m<-mean(irdf$irslen)
d<-sd(irdf$irslen)

irdf[ irdf$species=="setosa", ]
> irdf[ irdf$irid=="setosa", ]
  irid irslen irswid irplen irpwid species
1    1    5.1    3.5    1.4    0.2  setosa
2    4    4.6    3.1    1.5    0.2  setosa

irdf[ irdf$irid<3, ]
> irdf[ irdf$irid<3, ]
  irid irslen irswid irplen irpwid species
1    1    5.1    3.5    1.4    0.2  setosa

attach(irdf)
	s<-sum(irslen)
	t<-length(irslen)
	m<-mean(irslen)
	d<-sd(irslen)
	s
	t
	m
	d
detach(irdf)

attach(irdf)
	s1<<-sum(irslen)
	t1<<-length(irslen)
	m1<<-mean(irslen)
	d1<<-sd(irslen)
detach(irdf)
s1
t1
m1
d1

#with내부에서 1개만 출력
with(irdf,{
	s<-sum(irslen)
	t<-length(irslen)
	m<-mean(irslen)
	d<-sd(irslen)
	plot(irslen,species)
})

with(irdf,{
	s2<<-sum(irslen)
	t2<<-length(irslen)
	m2<<-mean(irslen)
	d2<<-sd(irslen)
})
s2
t2
m2
d2

#2.5.6 factor
f<-factor(irdf$species)


newspecies<-factor(irdf$species, levels=c("setosa","versicolor","virginica"), labels=c("F1","F2","F3"))
newspecies

iris
a<-iris$Species
a
b<-factor(a)
ordered(b) 
is.factor(b) 
is.ordered(b) 
> levels(b)
[1] "setosa"     "versicolor" "virginica" 

> names(iris)
[1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species" 



gl(3,4,5)  #level 3, 연속 4, 5개
a <- gl(2, 5, 10) #2-> 1,2 5-> 5번 , 모두 10개
a
levels(a) <- c("A", "B")
a
nlevels(a)
> nlevels(a)
[1] 2

factor(letters[1:10], labels = "A")
> factor(letters[1:10], labels = "A")
 [1] A1  A2  A3  A4  A5  A6  A7  A8  A9  A10
Levels: A1 A2 A3 A4 A5 A6 A7 A8 A9 A10

#2.5.6.2 table  -> factor를 이용한 2차원 배열 형식 , 테이블 형식

a <- iris$Species
b<-iris$Sepal.Length
t<-table(a, b)    
t
table(a, b, deparse.level = 0) # dnn  c("", "")
table(a, b, deparse.level = 2) # dnn is c("a", "b")

> a <- iris$Species
> b<-iris$Sepal.Length
> table(a, b)                    
            b
a            4.3 4.4 4.5 4.6 4.7 4.8 4.9 5 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 6 6.1
  setosa       1   3   1   4   2   5   4 8   8   3   1   5   2   0   2   1   0 0   0
  versicolor   0   0   0   0   0   0   1 2   1   1   0   1   5   5   5   3   2 4   4
  virginica    0   0   0   0   0   0   1 0   0   0   0   0   0   1   1   3   1 2   2
            b
a            6.2 6.3 6.4 6.5 6.6 6.7 6.8 6.9 7 7.1 7.2 7.3 7.4 7.6 7.7 7.9
  setosa       0   0   0   0   0   0   0   0 0   0   0   0   0   0   0   0
  versicolor   2   3   2   1   2   3   1   1 1   0   0   0   0   0   0   0
  virginica    2   6   5   4   0   5   2   3 0   1   3   1   1   1   4   1
> table(a, b, deparse.level = 0) # dnn  c("", "")
            
             4.3 4.4 4.5 4.6 4.7 4.8 4.9 5 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 6 6.1
  setosa       1   3   1   4   2   5   4 8   8   3   1   5   2   0   2   1   0 0   0
  versicolor   0   0   0   0   0   0   1 2   1   1   0   1   5   5   5   3   2 4   4
  virginica    0   0   0   0   0   0   1 0   0   0   0   0   0   1   1   3   1 2   2
            
             6.2 6.3 6.4 6.5 6.6 6.7 6.8 6.9 7 7.1 7.2 7.3 7.4 7.6 7.7 7.9
  setosa       0   0   0   0   0   0   0   0 0   0   0   0   0   0   0   0
  versicolor   2   3   2   1   2   3   1   1 1   0   0   0   0   0   0   0
  virginica    2   6   5   4   0   5   2   3 0   1   3   1   1   1   4   1
> table(a, b, deparse.level = 2) # dnn is c("a", "sample(a)")
            b
a            4.3 4.4 4.5 4.6 4.7 4.8 4.9 5 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 6 6.1
  setosa       1   3   1   4   2   5   4 8   8   3   1   5   2   0   2   1   0 0   0
  versicolor   0   0   0   0   0   0   1 2   1   1   0   1   5   5   5   3   2 4   4
  virginica    0   0   0   0   0   0   1 0   0   0   0   0   0   1   1   3   1 2   2
            b
a            6.2 6.3 6.4 6.5 6.6 6.7 6.8 6.9 7 7.1 7.2 7.3 7.4 7.6 7.7 7.9
  setosa       0   0   0   0   0   0   0   0 0   0   0   0   0   0   0   0
  versicolor   2   3   2   1   2   3   1   1 1   0   0   0   0   0   0   0
  virginica    2   6   5   4   0   5   2   3 0   1   3   1   1   1   4   1



a <- iris$Species
b<-iris$Sepal.Length
t<-table(a, b) 
match(levels(a),iris$Species)     #matching 첫위치 setosa 1, versicolor 51, virginica 101
> match(levels(a),iris$Species) 
[1]   1  51 101
levels(a)
> levels(a)
[1] "setosa"     "versicolor" "virginica" 
ordered(levels(a))
> ordered(levels(a))
[1] setosa     versicolor virginica 
Levels: setosa < versicolor < virginica
  
"setosa" %in% iris$Species

pmatch("seto",levels(iris$Species))

#2.5.7 df연산
k1<-c(1,2)
k2<-c(2,3)

k3<-k1+k2 


k1&&k2
k1>k2

#3
#3.1 if
y<-5
if(y>10) {
   print("y는 10보다.")
}

x<-5
if(x>10) {
   print("x는 10보다 크다.")
}else {
   print("x는 10보다 작다.")
}

z<-7
if(z>5) {
   print("z는 5보다 크다.")
}else if(z==5){
   print("z는 5다.")
}else {
   print("z는 5보다 작다.")
}


a <- c(5:-3)
sqrt(ifelse(a >= 0, a, NA)) 


x <- c("for","big","data")
if("big" %in% x) {
   print("big 발견")
} else {
   print("big 없다")
}


#3.2 switch
 x<-c(1:10,20)
 type<-"mean"
 t<-switch(type,
         mean = mean(x),
         median = median(x),
         trimmed = mean(x, trim = .1))
 t
 x<-c(1:10,20)
 type<-"median"
 t<-switch(type,
         mean = mean(x),
         median = median(x),
         trimmed = mean(x, trim = .1))
 t



#3.3 for
for(i in 1:17) print(1:i)
for(n in c(2,5,7,9,11)) {
   x <- rnorm(n)
   cat(n, ": ", sum(x^2), "\n", sep = "")
}
t <- factor(sample(letters[1:7], 9, replace = TRUE))
for(i in unique(t)) print(i)


#3.4 while
x <- c("for","big","data")
cnt <- 1
while (cnt <= length(x)) {
   print(x[cnt])
   cnt = cnt + 1
}

[1] "for"
[1] "big"
[1] "data"

#3.5 repeat
x <- c("for","big","data", "bad","analysis","visual")
cnt <- 1

repeat {
   print(x[cnt])
   cnt = cnt + 1
   if(cnt==4){
	next
   }else if(cnt>6){
        break
   }
}

#3.6 user define function - UDF

afun <- function(x){ return  (x*x*x)}
afun(4)
nsqrt <- function(x) x*x*x
nsqrt(4)

add = function(a,b) 
{ c = a+b
  return(c) }
add(2,5)
(function(a, b){ c <- a + b; return (c) })(5,7)
(function(a, b){ c <- a + b; c })(5,7)


divide = function(a=0,b=1) 
{ c = a/b
  return(c) }
divide()
divide(a=4,b=5)
divide(4,5)
divide(b=5,a=2)

> divide = function(a=0,b=1) 
+ { c = a/b
+ return(c) }
> divide()
[1] 0
> divide(a=4,b=5)
[1] 0.8
> divide(4,5)
[1] 0.8
> divide(b=5,a=2)
[1] 0.4


#3.7 수학 function

sin,cos,tan,asin,acos,atan,atan2,log,log10,exp

x<- 20
abs(x) 
sqrt(x) 
exp(x) 
log(x) 
log10(x) 
log2(x) 
log(x,base=10)


x<-3.25467
d<-3
round(x)
round(x,d) 
signif(x,d) 
floor(x) 
ceiling(x)
x<-3.65467
d<-3
round(x)
round(x,d) 
signif(x,d) 
floor(x) 
ceiling(x)


x <- seq(-2*pi, 2*pi, by = 0.1)
tx <- cbind(x, cos(x),  sin(x),  tan(x),  deparse.level=2) 
#deparse.level=2 column명 보이기 
op <- options(digits = 4, width = 100) 
head(tx)
tx[ (x %% 1) %in% c(0, 2) ,]
tx
options(op)

x <- c(0:10, 50)
xm <- mean(x)
c(xm, mean(x, trim = 0.10))
[1] 8.75 5.50
x
 [1]  0  1  2  3  4  5  6  7  8  9 10 50

x <- seq(-2*pi, 2*pi, by = 0.1)
tx <- cbind(x, cos(x),  sin(x),  tan(x),  deparse.level=2)
op <- options(digits = 4, width = 100) 
head(tx)
tx[ (x %% 1) %in% c(0, 2) ,]
tx
options(op)


showCurve <- function(x) sin(x)
curve(showCurve, -7, 7, n = 100)

plot(sin, -7,7)
plot(cos, -7,7)
plot(tan2, -7,7)


q<-runif(10)
t<-matrix(1:10, 5, 2, F)
u <- 1:10
x<-sample(u)
y<-sample(u, replace = TRUE)
z<-rnorm(10)
u
x
y
z
t

max(x)
min(x)
range(x)
sum(x)
diff(x)  # 1,3,5-> 1-3,3-5
prod(x)  #1:5 -> 1*2*3*4*5
mean(x)
median(x)
mean(x)
var(x) 
cov(x,y)
var(x,y)
sd(x)
cor(x,y)
round(z, 3)
log(u, 10)

which.max(x) #최대값 위치
which.min(x)

cumsum(x)
x
> cumsum(x)
 [1]  8 18 23 30 31 34 36 42 46 55
> x
 [1]  8 10  5  7  1  3  2  6  4  9

cumprod(x)
> cumprod(x)
 [1]       8      80     400    2800    2800    8400   16800  100800  403200 3628800
cummin(x)
> cummin(x)
 [1] 8 8 5 5 1 1 1 1 1 1
cummax(x)
> cummax(x)
 [1]  8 10 10 10 10 10 10 10 10 10

x
y
union(x,y)
intersect(x,y)
setdiff(x,y)
setequal(x,y)
> x
 [1]  4  3  5  2  8 10  6  7  1  9
> y
 [1] 3 1 3 6 4 2 3 7 5 7
> union(x,y)
 [1]  4  3  5  2  8 10  6  7  1  9
> intersect(x,y)
[1] 4 3 5 2 6 7 1
> setdiff(x,y)
[1]  8 10  9
> setequal(x,y)
[1] FALSE

is.element(3,c(1:10))
> is.element(3,c(1:10))
[1] TRUE

Mod(-x)  #abs(-x)
abs(-x)


min(5:1, pi) # 최소값 1개
pmin(5:1, pi) #->최소값 pi로 
> pmin(5:1, pi) #->최소값 pi로 , pi보다 크면 pi
[1] 3.141593 3.141593 3.000000 2.000000 1.000000
max(5:1, pi) # 최대값 1개
pmax(5:1, pi) #->최대값 pi로 ,pi보다 작므면 pi
> pmax(5:1, pi)
[1] 5.000000 4.000000 3.141593 3.141593 3.141593


scale(t) #센터중심 -1< < 1

x<-sample(1:4)
mean(x)
quantile(x,probs=c(0.25,0.5,0.75,1))
quantile(x,probs=c(1:4)/4)

x<-sample(1:4)
x
c(1:4)/4
weighted.mean(x, c(1:4)/4)
c(1:4)/4*x
sum(c(1:4)/4*x)/sum(c(1:4)/4)

rank(x)  #x 순서

i<-5+8i
Re(i)
Im(i) 
Mod(i) 
Arg(i) 
Conj(i)
Arg(i) *180/pi
> i<-5+8i
> Re(i)
[1] 5
> Im(i) 
[1] 8
> Mod(i) 
[1] 9.433981
> i<-5+8i
> Re(i)
[1] 5
> Im(i) 
[1] 8
> Mod(i) 
[1] 9.433981
> Arg(i) 
[1] 1.012197
> Conj(i)
[1] 5-8i
> Conj(i)
[1] 5-8i 
> Arg(i) *180/pi
[1] 57.99462



#3.8
a<-1
b<-10
c<-a:b 
n<-10
v<-c(1,1,1,1,1,2,2,2,2,2)
seq(n) 
seq(a,b) 
seq(a,b,by=2) 
seq(a,b,length=5) 
seq(along=c) # 1:length(c)
rep(c,2) 
rep(c,v)
rep(c,each=3) 

#3.9
u<-c(1:20)
x<-sample(u)
x
sort(x) 
sort(x, decreasing=TRUE) 
rev(x)
order(x) 



#3.10	타입변환, 타입 확인
a<-c(T,T,F,F,T,F,T,F)
b<-seq(1L,10L,by=2L)
c<-c(1:10)
d<-rnorm(10)
e<-letters[1:26]
f<-c(1+2i, 3, 5, 3i,2+3i)


is.logical(3) 
is.numeric(3)
is.complex(3+2i)
is.character("hello")
is.list(a) 
is.vector(a) 


is.logical(a) 
is.numeric(b)
is.complex(f)
is.character(e)
is.list(x) 
is.vector(x) 


g<-c("last","age")
i<-c(1,3,2,5)
k<-c(18,20,21,22)
li<-list(i,k)
names(li)<-g
is.list(li) 
li
po<-list(x=li$last,y=li$age)
plot(po)

as.logical(3) 
as.numeric("3") 
as.complex(2) 
as.character(3) 

as.list(i)
b<-as.vector(li) 
a<-unlist(li) 
a
b
a[[1]]
#a[["last"]]   #에러
b[[1]]
b[["last"]]

as.logical(i) 
as.numeric(c("1","2","3")) 
as.complex(k) 
as.character(i) 



u <- runif(10)
u
punif(u)
punif(u) == u
dunif(u)
dunif(u) == 1
qunif(u)




#3.11 string

x<-"Hello my name is R."
nchar(x) 
a<-paste0(1:10)
a<-paste(1:10)        
a<-as.character(1:10) 
a
class(a)

paste(c(1:5),x, sep = ",", collapse = " ") 
paste("Hello", "my", "name", collapse = ", ")
paste("Hello", "my", "name", sep = ", ")

b<-strsplit(x, " ")
b
b[[1]][1]
class(b) #list 
c<-strsplit(x, NULL)
strsplit(x, split) 

x<-"Hello my name is R."
nchar(x) 
a<-paste0(1:10)
a<-paste(1:10)        
a<-as.character(1:10) 
a
class(a)

paste(c(1:5),x, sep = ",", collapse = " ") 
paste("Hello", "my", "name", collapse = ", ")
paste("Hello", "my", "name", sep = ", ")

b<-strsplit(x, " ")
b
b[[1]][1]
class(b) #list 
c<-strsplit(x, NULL)
strsplit(x, split) 

a<-letters
a
class(a)
> a<-letters
> a
 [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u"
[22] "v" "w" "x" "y" "z"
> class(a)
[1] "character"
> a[1]
[1] "a"
> a[2]
[1] "b"
> grep("[a-z]", letters)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
x<-c("Hello", "my", "name", "is", "R. aello")
i<-grep("[el]",x)
i
> x<-c("Hello", "my", "name", "is", "R. aello")
> i<-grep("[el]",x)
> i
[1] 1 3 5


x<-c("Hello", "my", "name", "is", "R. aello")
if(length(i <- grep("na", x)))
   cat("'na' find!! in\n\t", x, "\n") 
   x[i]
   
> x<-c("Hello", "my", "name", "is", "R. aello")
> if(length(i <- grep("na", x)))
+     cat("'na' find!! in\n\t", x, "\n") 
'na' find!! in
	 Hello my name is R. aello 
> x[i]
[1] "name"


g<-grep("[hl]", x, value = TRUE) 
g

h<-grepl("[hl]", x)   # 있으면 l -> logical T

j<-sub("[hl]", "ko", x) 
j
j[1]


x <- "http://www.cran-R.com:8080/helloR/tutor"
a <- regexec("^(([^:]+)://)?([^:/]+)(:([0-9]+))?(/.*)", x)
a
regmatches(x, a)


address <- function(x) {
    a <- regexec("^(([^:]+)://)?([^:/]+)(:([0-9]+))?(/.*)", x)
    parts <- do.call(rbind,
                     lapply(regmatches(x, a), `[`, c(3L, 4L, 6L, 7L)))
    colnames(parts) <- c("protocol","host","port","path")
    parts
}
address(x)


gsub("[hlo]", "LLL", x) # hlo 3*LLL

substr("Hello my name is R.", 2, 4)
substring("Hello my name is R.", 1:6, 1:6)

rep("Hello my name is R.", 4)
substr(rep("Hello my name is R.", 4), 1:4, 4:5)



x<-c("Hello", "my", "name", "is", "R. aello")
substr(x, 2, 4)
substring(x, 2, 4:7)

substring(x, 2) <- c("..", "+++","---")
x
> x<-c("Hello", "my", "name", "is", "R. aello")
> substr(x, 2, 4)
[1] "ell" "y"   "ame" "s"   ". a"
> substring(x, 2, 4:7)
[1] "ell" "y"   "ame" "s"   ". a"
> 
> substring(x, 2) <- c("..", "+++","---")
> x
[1] "H..lo"    "m+"       "n---"     "i."       "R+++ello"



x<-c("hello","my","name")
a<-strsplit(x, NULL)
a
b<-lapply(strsplit(x, NULL), rev)
b
c<-paste(b,"")
c

d<-sapply(lapply(strsplit(x, NULL), rev), paste, collapse = "")
d

reverse <- function(x)
        sapply(lapply(strsplit(x, NULL), rev), paste, collapse = "")
reverse(x)

d<-rev("hello")  # 적용안됨  strsplit해서 "h" "e".. -> "e" "h"
d


#3.12
#stringr
library(stringr)
c<-c("helloiw","name is")
str_length("helloiw")
str_sub(c,3,4)#3~4
str_sub(c,3) #3이후
str_sub(c,-3)#뒤에서 3자
str_sub(c,3,-4) #3번째에서 뒤에서4번째
str_dup(c, c(1, 2))

str_sub(c, 3, 3) <- "k"
c

str_pad(c,20)
str_pad(c,20,"right")
str_pad(c,20,"both")

str_trim("  hello ")
str_trim("  hello ","right")
str_trim("  hello ","left")


c<-c("hello my name is r.","name is")
str_trunc(c,10)
str_pad(c,10,"right")

c %>% 
  str_trunc(10)  %>%   
  str_pad(10, "right")


str_c("Alphbet is : ", letters)
str_c("Alphbet is ", letters, sep = ": ")
str_c(letters, " is in Alphabet and ", "...")

strs<-str_c("프로그래밍은 기본적으로 순차적(위에서 아래로)으로 진행된다."
,"같은 소스가 반복되거나 너무 복잡하면"
,"이런 부분을 잘라서 하나의 덩어리로 만들고 이름을 붙여준다.",
"이렇게 이름이 붙은 소스 덩어리를 ‘메서드’라고 한다. 메서드를 호출하면서 값을 대입(10, 20)하면"
,"1) 연산(10+20)을 하고 2) 결과(30)를 반환하고 3) 원래 위치로 돌아와서 진행을 마치고 끝낸다. ")

cat(str_wrap(strs, width = 50))


str_to_upper(c)
str_to_lower(c)
str_to_title(c)
str_order(c)
str_sort(c)

tel <- c(
  "hong gil dong", 
  "010 345 1234", 
  "02-234-4567", 
  "Mobile: 010-234-3456; Tel: 02.567.8901"
)
mobile <- "([0-9][0-9]{1,2})[- .]([0-9]{3})[- .]([0-9]{4})"
str_detect(tel, mobile)
str_subset(tel, mobile)
str_count(tel, mobile)
str_locate(tel, mobile)

str_locate_all(tel, mobile)
str_extract(tel, mobile)
str_extract_all(tel, mobile)
str_extract_all(tel, mobile, simplify = TRUE)

str_match(tel, mobile)
str_match_all(tel, mobile)

str_replace(tel, mobile,"**-***-****")
str_replace_all(tel, mobile,"**-***-****")

#3.13 Date
d <- Sys.Date()
d+10
d<"2018-6-25"

format(d, "%d %b %Y") 
format(d, "%d %b %y") 
format(d, "%Y-%b-%d") 
format(d, "%Y-%m-%d %H:%M:%S")
td <- seq(d, length.out=10, by="1 week"))
weekdays(d)
months(td)

#3.14

require(graphics)
ts(1:12, frequency = 4, start = c(2000, 1)) # 4등분 1~12
print( ts(1:12, frequency = 4, start = c(12, 1)), calendar = TRUE) #12등분 1열
ex<-ts(sample(12*(1960-1949)),frequency=12,start = c(1949, 1) )

AirPassengers
head(AirPassengers)
summary(AirPassengers)

Nile
head(Nile)
summary(Nile)

nhtemp
head(nhtemp)
summary(nhtemp)

EuStockMarkets
head(EuStockMarkets)
summary(EuStockMarkets)

plot(AirPassengers)
plot(Nile)
plot(nhtemp, lag(nhtemp, 1), cex = .8, col = "blue",
     main = "Lag plot")

SMI <- EuStockMarkets[, "SMI"]
plot(lag(SMI,  1), SMI, pch = ".")
plot(lag(SMI, 20), SMI, pch = ".", log = "xy",
     main = "4 weeks lagged SMI stocks -- log scale", xy.lines =  TRUE)



#4 data
#
# 키보드
a <- scan()
a 
sum(a) 

# 키보드 분자열
b <- scan(what=character())
b  

# df
df = data.frame() 
df = edit(df) 
df


#4.1 read.table() 

getwd()
setwd("D:/rpdf_서울여대용")
a  <- read.table(file="card.csv")
a

names(a) <- c("card","review","prepurchase","puchase")
a

ball  <- read.table(file="playball.csv", header=TRUE)
ball

ball2  <- read.table(file.choose(), header=TRUE)

geo  <- read.table(file="geolocation.csv", sep=",", header=TRUE) 


pb <- read.csv(file="playball.csv", na.strings="-") #null -> -
pb


install.packages("xlsx")   # xlsx 패키지 설치 
install.packages("rJava")   # rJava 패키지 설치 
Sys.setenv(JAVA_HOME='c:\\Java\\jdk1.8.0_151')

library(rJava)
library(xlsx) 
f <- read.xlsx(file.choose(), 
                       sheetIndex=1, encoding="UTF-8")
f

#write
sink() 
getwd()
setwd("D:/rpdf_서울여대용")
library(RSADBE)              
data(iris)          
sink("iris.txt")            
irs <- iris  
irs                       
sink()


a <- read.xlsx(file.choose(), sheetIndex=1, encoding="UTF-8") 
write.table(a, "a.txt")   
write.table(a, "b.txt", row.names=FALSE) 
write.table(a, "c.txt", row.names=FALSE, quote=FALSE) 

write.table(iris, "iris2.txt", row.names=F) 

c <- read.table(file="iris2.txt", sep="", header=T) 
c

library(xlsx) 

d <- read.xlsx(file.choose(), sheetIndex=1, encoding="UTF-8")
d
write.xlsx(d, "d.xlsx")
  

write.csv(iris,"iris4.csv", row.names=F, quote=F) 
write.csv(iris,"iris4.csv")) 


install.packages("RODBC")
library(RODBC)
con=odbcConnect('hr','hr','hr')
rt<-sqlQuery(con,"select * from employees")

install.packages("DBI")
install.packages("RJDBC")
install.packages("DBI")
require(rJava);
require(RJDBC);
library(DBI)
library(rJava)
library(RJDBC) 
drv <- JDBC(driverClass = "oracle.jdbc.driver.OracleDriver",
             classPath = "D:\\java\\javalisb\\ojdbc6.jar");
conn <- dbConnect(drv,
                   "jdbc:oracle:thin:@localhost:1521:xe",
                   "hr",
                   "hr");
rst <- dbGetQuery(conn, "select * from employees");
rst



#4.2데이터 추출
x<-c(1:20,2:8)
unique(x) 
unique(iris$Species)
table(iris$Species, iris$Sepal.Length)


airquality
head(airquality)
tail(airquality)
summary(airquality)
subset(airquality, Temp > 90, select = c(Ozone, Temp))
subset(airquality, Day == 2, select = -Ozone)
subset(airquality, select = Ozone:Wind)
with(airquality, subset(Ozone, Temp > 90))

summary(state.x77)
head(state.x77)
s77 <- rownames(state.x77)
rn77 <- s77 %in% grep("^M", s77, value = TRUE)
subset(state.x77, rn77, Income:Murder)
subset(state.x77, grepl("^M", s77), Income:Murder)

sample(c(1:30), 10) 

#5
#5.1
AirPassengers
head(AirPassengers)
summary(AirPassengers)

Nile
head(Nile)
summary(Nile)

nhtemp
head(nhtemp)
summary(nhtemp)


EuStockMarkets
head(EuStockMarkets)
summary(EuStockMarkets)

plot(AirPassengers)
plot(Nile)
plot(nhtemp, lag(nhtemp, 1), cex = .8, col = "blue",
     main = "Lag plot")

SMI <- EuStockMarkets[, "SMI"]
plot(lag(SMI,  1), SMI, pch = ".")
plot(lag(SMI, 20), SMI, pch = ".", log = "xy",
     main = "4 weeks lagged SMI stocks -- log scale", xy.lines =  TRUE)


#5.2
library(reshape)
data(tips)

tips
head(tips)
summary(tips)


Tipping data

Description
One waiter recorded information about each tip he 
received over a period of a few months working in one restaurant. He collected several variables:

tip in dollars,
bill in dollars,
sex of the bill payer,
whether there were smokers in the party,
day of the week,
time of day,
size of the party.


> class(tips)
[1] "data.frame"


#melt and cast
m<-melt(tips)
head(tips)
head(m)
mc<-cast(m,time~variable, mean)


tips$no<-1:nrow(tips)
#id기준 variable과  value로 분해
tm<-melt(tips, id=c("no","sex","smoker","day","time"),na.rm=T) #df
tm
head(tm)
str(tm)
summary(tm)
table(tm$variable)


tmc<-cast(tm,time~variable, mean)
tmc

names(airquality) <- tolower(names(airquality))
airm<-melt(airquality, id=c("month", "day"))
airm

names(ChickWeight) <- tolower(names(ChickWeight))
melt(ChickWeight, id=2:4)


#install.packages("plyr")
library(plyr)
data(baseball)
head(baseball)
ball<-baseball[,c(1,2,4,5,13)]

ddply(ball[1:200,],~year,nrow)


#array apply
ar0<-array(1:30,c(3,5,2), list(rname,cname,page))
a<-array(1:4, c(3,5))
a
apply(a, 1, sort) #행
apply(a, 2, sort) #열
apply(a, 1, mean) #행
apply(a, 2, mean) #열

#lapply==sapply 
x<-list(a=c(1:10),b=rnorm(10),c=c(T,T,F,F))
sapply(x, mean)


v1 <- sapply(1:6, seq) 
v1
sapply(v1, fivenum)
vapply(v1, fivenum,
       c(Min. = 0, "1st Qu." = 0, Median = 0, "3rd Qu." = 0, Max. = 0))

fivenum(1:7)  #1~7  사이 5등분 수

a <- structure((2:6), names = LETTERS[1:5])
a
b<-c(1:3)
rep(a, length.out = 3)
outer(rep(a, length.out = 3), b)
fun1 <- function(x, y) outer(rep(x, length.out = 3), y)
fun1(a,b)
a2 <- sapply(v, fun1, y = (1:5), simplify = "array")
a3 <- vapply(v, fun1, outer(1:3, 1:5), y = (1:5))


subset(airquality, Temp > 90, select = c(Ozone, Temp))
subset(airquality, Day == 2, select = -Ozone)
subset(airquality, select = Ozone:Wind)


#5.3 graph
#5.3.1
air<-AirPassengers
air
head(air)
summary(air)
plot(air, xlab="A monthly time series.", 
ylab="AirPassengers (x1000,in thousands)", type="o", pch =20)

airdecomp <- decompose(air, type = "multiplicative")
plot(airdecomp)

#length(air) # 144=12x12  1949~1960
#trend airdecomp
len<-length(air)
t <- seq(1,len, 1)
mt <- lm(formula = airdecomp$trend ~ t)
summary(mt)
predict <- predict.lm(mt, newtime = data.frame(t))
#앞뒤로 예외 6개 없음
plot(airdecomp$trend[1+6:len+6] ~ t[1+6:len+6], 
ylab="Trend AirPassenger(x1000)", xlab="times",
     type="p", pch=20, main = "Model vs. Observation")
lines(predict, col="red")

layout(matrix(c(1,2,3,4),2,2)) #4=2x2 구역
plot(mt)

# Y예상승객수 =  T(trend) x S(1월 ~12월 모자모양분포)xE(오류)
# 1961년 예상 승객수
# summary(mt)
#(Intercept) 84.64827    2.05100   41.27   <2e-16 ***
#t            2.66694    0.02504  106.50   <2e-16 ***
# T=2.66694*ts + 84.64827, ts=144+1:144+12 , rep(0,12) 0 12번 반복
T1961 <- data.frame("T" = 2.66694*c(145:156) + 84.64827,
S=rep(0,12), E=rep(1,12),
               row.names = c("Jan", "Feb", "Mar", 
	       "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
T1961

# decompose -> seasonal 1~2월 모자 모냥 반영
season<-airdecomp$seasonal #같은 것 중복
S<-unique(season)
T1961$S <-S
T1961

# E -> random  -> airdecomp$random
err<-mean(airdecomp$random, na.rm = T) #월별 
err
#에러 분포가 1에 근접
#95%로 최악과 최상을 가정

error <- sd(airdecomp$random[7:138]) #앞뒤로 6개씩 없음
error


T1961$BASE <- T1961$T * T1961$S  * 1              
T1961$MAX <- T1961$T * T1961$S * (1+1.95*error)  
T1961$MIN <- T1961$T * T1961$S * (1-1.95*error)  
T1961



#결과 도출
plot(airdecomp$x, xlim=c(1,156),xlab = "Month", ylab = "AirPassengers (x1000)" )
lines(data.frame(airdecomp$x))
lines(T1961$BASE, x=c(145:156), col="red")
lines(T1961$MAX, x=c(145:156), col="blue")
lines(T1961$MIN, x=c(145:156), col="green")
#결과 저장
par(mfrow=c(1,1))
pdf("D:/rpdf_서울여대용/result.pdf")
plot(airdecomp$x, xlim=c(1,156),xlab = "Month", ylab = "AirPassengers (x1000)" )
lines(data.frame(airdecomp$x))
lines(T1961$BASE, x=c(145:156), col="red")
lines(T1961$MAX, x=c(145:156), col="blue")
lines(T1961$MIN, x=c(145:156), col="green")
dev.off()

#AirPassenger Arima
library(ggfortify)
library(tseries)
library(forecast)
air<-AirPassengers
air
head(air)
summary(air)

frequency(air) #12
cycle(air)  #1~12 반복
#install.packages("ggfortify") library(ggfortify)
autoplot(air) + labs(x ="A monthly time series.",
y = "AirPassengers (x1000,in thousands)",
title="AirPassengers from 1949 to 1960") 

boxplot(air~cycle(air),xlab="A monthly time series.", 
y = "AirPassengers (x1000,in thousands)",
main ="AirPassengers from 1949 to 1960")


airdecomp <- decompose(air, type = "multiplicative")
autoplot(airdecomp)
#install.packages("tseries") library(tseries)
# 선위로 올라가면 매우 큰 관계가 있다. ----
adf.test(air) #  Augmented Dickey-Fuller Test
#adf.test(air, alternative ="stationary", k=12)
#data:  air
#Dickey-Fuller = -7.3186, Lag order = 5, p-value = 0.01
#alternative hypothesis: stationary
#autocorrelation function - acf, stats R package
autoplot(acf(air,plot=FALSE))+ 
labs(title="Correlation AirPassengers from 1949 to 1960") 
#install.packages("forecast") library(forecast)
autoplot(air) + geom_smooth(method="lm")
+ labs(x ="A monthly time series.", 
y = "AirPassengers (x1000,in thousands)",
title="AirPassengers from 1949 to 1960") 
airarima <- auto.arima(air)
airarima
"""
Series: air 
ARIMA(2,1,1)(0,1,0)[12] 

Coefficients:
         ar1     ar2      ma1
      0.5960  0.2143  -0.9819
s.e.  0.0888  0.0880   0.0292

sigma^2 estimated as 132.3:  log likelihood=-504.92
AIC=1017.85   AICc=1018.17   BIC=1029.35"""
# 
ggtsdiag(airarima)
# 12*3 95%
airforecast <- forecast(airarima, level = c(95), h = 36)
autoplot(airforecast)+ labs(x ="A monthly time series.", 
y = "AirPassengers (x1000,in thousands)",
title="AirPassengers from 1949 to 1963") 

fit <- arima(air, order=c(2, 1, 1), list(order=c(0, 1, 0), period = 12))
fit

predic <- predict(fit, n.ahead=36)
predic
MA <- predic$pred + 2*predic$se 
MI <- predic$pred - 2*predic$se
# plot observed and predicted values
ts.plot(air, predic$pred, MA, MI, col=c(1, 2, 4, 4), lty=c(1, 1, 2, 2))
#library(graphics)
legend("topleft", c("Air. DATA", "Forecast", "95% Prediction Bounds"), 
       col=c(1, 2, 4),lty=c(1, 1, 2))


predic$MAX<-MA
predic$MIN<-MI
predic


#5.3.2 airquality
#df 준비
subset(airquality, Temp > 90, select = c(Ozone, Temp))
subset(airquality, Day == 2, select = -Ozone)
subset(airquality, select = Ozone:Wind)
airquality[1:6,]
mean(airquality$Temp)
mean(airquality$Ozone, na.rm=T)
median(airquality$Temp)
var(airquality$Wind)
quantile(airquality$Temp, seq(0,1,0.1))
apply(airquality, 2, mean, na.rm=T)   #2 열, 1 행
class(apply(airquality, 2, mean, na.rm=T)) #numeric
summary(airquality$Ozone)
airquality$newMonth = factor(airquality$Month)


#airquality 파악
airq<-airquality
airq
class(airq)  #[1] "data.frame"
head(aiq,10)
summary(airq)
names(airq)
#준비
names(airq)<-tolower(names(airq))
airq
#install.packages("reshape") library(reshape)
airmelt<-melt(airq, id=c("month","day"),na.rm=T) #id 복합키
airmelt
airmeltcast<-cast(airmelt,day~month~variable)  
airmeltcast   #array class(airmeltcast)

airmean<-cast(airmelt,month~variable,mean)
airmean[1,]
airmean[,1]
aircastmargin<-cast(airmelt, month~variable,
mean, margins=c("grand_row","grand_col"))
aircastmargin

#분석
hist(airq$ozone,xlim=c(0,200),xlab="Ozone (ppb)",
ylab="Frequency" ,
main="Ozone vs. Frequency in airquality")
#install.packages("party") library(party)
airsubna<-subset(airq, !is.na(ozone))
airctree<-ctree(ozone~.,data=airsubna)
plot(airctree)

lmresult<-lm(ozone~.,data=airq[,c(1:4)]) #칼럼 1~4 
summary(lmresult)
#예상
pred<-predict(lmresult,newdata=airq[,c(1:4)])
pred
plot(airq$ozone,pred,xlim=c(0,200), xlab="Ozone",ylab="Predict Ozone")
pred
airq$pd<-pred
airq

airre<-subset(airq, !is.na(ozone) & pd>0, select = ozone:pd)
airre




#5.3.3  iris

plot(x, sin(x),
main="Overlaying Graphs",
ylab="",
type="l",
col="blue")
lines(x,cos(x), col="red")
legend("topleft",
c("sin(x)","cos(x)"),
fill=c("blue","red")
)

#install.packages("rpart")
#install.packages("rpart.plot")
library("rpart")
library("rpart.plot")
#install.packages("party")
library(party)

dev.new()
irisdf<-iris
class(irisdf)  #[1] "data.frame"
head(irisdf)
summary(irisdf)
names(irisdf)

str(iris)

indexes <- sample(150, 110)
irisdftrain <- irisdf[indexes,]
irisdftest <- irisdf[-indexes,]
#testData <-data.frame (Sepal.Length = 1, Sepal.Width = 4, 
Petal.Length =1.2, Petal.Width=0.3)

length(irisdftrain)
length(irisdftest)

length(indexes)              #110
length(irisdftrain$Species)  #110
length(irisdftest$Species)   #40=150-110

#ctree <- rpart(Species ~ Sepal.Length + Sepal.Width 
#+ Petal.Length + Petal.Width, data = irisdftrain, method = "class")
#1
ctreefit <- rpart(Species ~ ., data=irisdftrain, method="class")
ctreefit
pred <- predict(ctreefit, irisdftest, type="class")   
#matrix -> type="class" -> factor
rpart.plot(ctreefit, main="Conditional Inference Tree for Iris")
tm1<-table(pred, irisdftest$Species)

sum(diag(tm1)) / sum(tm1)

#2
#install.packages("caret")
library(caret)
table(irisdftest$Species)     
irisdftest$pred <- pred
confusionMatrix(irisdftest$pred, irisdftest$Specie)


#3
ttreefit <- ctree(Species ~ ., data = irisdftrain)
ttreefit
pred2<- predict(ttreefit, irisdftest)   #factor
plot(ttreefit, main="Conditional Inference Tree for Iris")
tm2<-table(pred2, irisdftest$Species)

sum(diag(tm2)) / sum(tm2)

#install.packages("C50")
library(C50)
c5_options <- C5.0Control(winnow = FALSE, noGlobalPruning = FALSE)
c5fit <- C5.0(Species ~ ., data = irisdftrain, control=c5_options, rules=FALSE)
summary(c5fit)
C5imp(c5fit)
C5imp(c5fit, metric = "splits")
plot(c5fit, main="Conditional Inference Tree for Iris")
pred3<- predict(c5fit, irisdftest)   #factor
tm3<-table(pred3, irisdftest$Species)

sum(diag(tm3)) / sum(tm3)

#plot
 plot(iris$Petal.Length, iris$Petal.Width, 
 pch=21, bg=c("red","green3","blue")[unclass(iris$Species)],
 xlab="iris Petal Length",
 ylab="iris Petal Width",
 main="Iris Data(The data were collected by Anderson, Edgar (1935).)")

pairs(iris)
pairs(iris[1:4], main = "The data were collected by Anderson, Edgar (1935).)",
pch = 21, bg = c("red", "green", "blue")[unclass(iris$Species)])

lsfit(iris$Petal.Length, iris$Petal.Width)$coefficients
 plot(iris$Petal.Length, iris$Petal.Width, 
 pch=21, bg=c("red","green","blue")[unclass(iris$Species)],
 xlab="iris Petal Length",
 ylab="iris Petal Width",
 main="Iris Data(The data were collected by Anderson, Edgar (1935).)")
 abline(lsfit(iris$Petal.Length, iris$Petal.Width)$coefficients, col="black")


 lm(Petal.Width ~ Petal.Length, data=iris)$coefficients
 plot(iris$Petal.Length, iris$Petal.Width, 
 pch=21, bg=c("red","green","blue")[unclass(iris$Species)],
 xlab="iris Petal Length",
 ylab="iris Petal Width",
 main="Iris Data(The data were collected by Anderson, Edgar (1935).)")
 abline(lm(Petal.Width ~ Petal.Length, data=iris)$coefficients, col="black")


#prun
prun3fit <- rpart(Species ~ ., data=irisdftrain, 
method="class",control = rpart.control(minsplit = 3))
prun3fit
prun5fit <- rpart(Species ~ ., data=irisdftrain, 
method="class",control = rpart.control(minsplit = 5))
prun5fit
prun7fit <- rpart(Species ~ ., data=irisdftrain,
method="class",control = rpart.control(minsplit = 7))
prun7fit
prun9fit <- rpart(Species ~ ., data=irisdftrain,
method="class",control = rpart.control(minsplit = 9))
prun9fit
par(mfcol = c(2, 2))
rpart.plot(prun3fit, main = "minsplit=3")
text(prun3fit, cex = 0.8)
rpart.plot(prun5fit, main = "minsplit=5")
text(prun5fit, cex = 0.8)
rpart.plot(prun7fit, main = "minsplit=7")
text(prun7fit, cex = 0.8)
rpart.plot(prun9fit, main = "minsplit=9")
text(prun9fit, cex = 0.8)


#5.3.4
#5.3.4 k-means 1
dev.new()
irisdftrain3 <- iris
#irisdftrain3<- irisdftrain3[-5]       #Species 제거
kmins <- kmeans(irisdftrain3[,3:4], 3)
plot(irisdftrain3[c("Petal.Length", "Petal.Width")], col=kmins$cluster)
points(kmins$centers[,c("Petal.Length", "Petal.Width")], col=1:3, pch=8, cex=2)
tclust<-table(iris$Species,kmins$cluster)
randIndex(tclust)

#plot 
library(ggplot2)
ggplot(irisdftrain, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

#5.3.4 k-means 2
dev.new()
irisdf<-iris
class(irisdf)  #[1] "data.frame"
head(irisdf)
summary(irisdf)
names(irisdf)
str(iris)

#install.packages("caret")
#library(caret)
#set.seed(1712)
#trainNum <- createDataPartition(y = iris$Species, p = 0.7, list = F)
#irisdftrain <- iris[trainNum,]
#irisdftrain

indexes <- sample(150, 110)
irisdftrain <- irisdf[indexes,]
#irisdftest <- irisdf[-indexes,]
irisdftrainscaled <- scale(irisdftrain[-5])
irisdftrainscaled

#summary(irisdftrainscaled)

#또는 normalizing 한다. 
# normz <- function(x) (x-min(x)/((max(x)-min(x))
#irisdftrainscaled2$Sepal.Length<- normz(irisdftrain$Sepal.Length)
#irisdftrainscaled2$Sepal.Width<- normalize(irisdftrain$Sepal.Width)
#irisdftrainscaled2$Petal.Length<- normalize(irisdftrain$Petal.Length)
#irisdftrainscaled2$Petal.Width<- normalize(irisdftrain$Petal.Width)

#cluster 개수- 확인
#install.packages("NbClust")
library(NbClust)
nclusters <- NbClust(irisdftrainscaled, min.nc = 2, max.nc = 15, method = "kmeans")

#* Among all indices:                                                
#* 8 proposed 2 as the best number of clusters 
#* 9 proposed 3 as the best number of clusters 
#* 2 proposed 5 as the best number of clusters 
#* 1 proposed 8 as the best number of clusters 
#* 3 proposed 14 as the best number of clusters 
#* 1 proposed 15 as the best number of clusters 
#                   ***** Conclusion *****                            
#* According to the majority rule, the best number of clusters is  3 

par(mfrow=c(1,1))
barplot(table(nclusters$Best.n[1,]),
        xlab="Clusters number", ylab="Criteria",
        main="The best number of clusters")
#model
#irismodel<- kmeans(irisdftrainscaled, centers = 3, iter.max = 10000)
irismodel <- kmeans(irisdftrainscaled[,3:4], 3, nstart = 20) #향상됨 
irismodel$centers
irismodel$cluster

#cluster학인
#install.packages("ggplot2")
#library(ggplot2)
#qplot(Petal.Width, Petal.Length, colour = cluster, data = irisdftrain)
#irisdftrain$cluster <- as.factor(irismodel$cluster)
plot(irisdftrain[c("Petal.Length", "Petal.Width")], col=irismodel$cluster)
#points(irismodel$centers[,c("Petal.Length", "Petal.Width")], col=1:3, pch=8, cex=2)

#install.packages("flexclust")
#library(flexclust)
tclust<-table(irisdftrain$Species,irismodel$cluster)
randIndex(tclust)

#result
iris.class<- irisdftrain[,"Species"]
table(irismodel$cluster,iris.class)

# predict --------------
#lm linear regression predict
irisdftest <- iris[-trainNum,]
irislm <- lm(Petal.Width ~ ., data = irisdftrain)
irislm
predlm <- predict(irislm, newdata = irisdftest)
cor(irisdftest$Petal.Width, predlm)
summary(irislm)$r.squared
plot(irisdftest$Petal.Width, predlm)

#Hierarchical Clustering
dev.new()
hc <- hclust(dist(irisdftrain), method = "ave")
plot(hc, hang = -1, labels = irisdftrain$Species)
rect.hclust(hc, k = 3,border = 2:4)
groups <- cutree(hc, k = 3)
u<-table(irisdftrain$Species, groups)
randIndex(u)

#knn prediction
require("class") 
irisdftrain <- irisdf[indexes,]
irisdftest <- irisdf[-indexes,]
irisdftrainscaled <- scale(irisdftrain[-5])
irisdftrainscaled
irisdftestscaled <- scale(irisdftest[-5])
irisdftestscaled

knnmodel<- knn(train=irisdftrainscaled, test=irisdftestscaled, cl=irisdftrain[,5], k=16)
knnmodel
t<-table(irisdftest[,5], knnmodel)
t
randIndex(t)

#pam
require("fpc") 
irismodel <- kmeans(irisdftrainscaled[,3:4], 3, nstart = 20) #향상됨 
irismodel$centers
pam<-pamk(irisdftestscaled[,3:4],3)
s<-table(pam$pamobject$clustering,irisdftest$Species)
s
randIndex(s)

layout(matrix(c(1,2),1,2))
plot(pam$pamobject)
layout(matrix(1))


#randomForest
#install.packages("randomForest")
library(randomForest)
rfm<-randomForest(Species~.,iris,importance=T,na.action=na.omit)
rfm

#kmean preict
dev.new()
irisdf<-iris
class(irisdf)  #[1] "data.frame"
head(irisdf)
summary(irisdf)
names(irisdf)
str(iris)


indexes <- sample(150, 110)
irisdftrain <- irisdf[indexes,]
irisdftest <- irisdf[-indexes,]
irisdftrainz <- irisdftrain[-5]
irisdftestz <- irisdftest[-5]
#irisdftrainscaled <- scale(irisdftrain[-5])
#irisdftrainscaled
#irisdftestscaled <- scale(irisdftest[-5])
#irisdftestscaled


predictkmeans<-function(object, data){
k <- nrow(object$centers)
n <- nrow(data)
d <- as.matrix(dist(rbind(object$centers, data)))[-(1:k),1:k]
out <- apply(d, 1, which.min)
return(out)}

trainfit <- kmeans(irisdftrainz, 3, 25)
pairs(irisdftrainz, pch= trainfit$cluster, col=trainfit$cluster)
pred <- predictkmeans(trainfit, irisdftestz)
testfit <- kmeans(irisdftestz, 3, 25)
pairs(irisdftestz, pch=pred, col=testfit$cluster)

table(data.frame(S1=pred,S2=testfit$cluster))


#5.3.5 인공인경망

#install.packages("nnet")
library(nnet)
# 0
dev.new()
irisdf<-iris
class(irisdf)  #[1] "data.frame"
head(irisdf)
summary(irisdf)
names(irisdf)
str(iris)
# 1
indexes <- sample(150, 110)
irisdftrain <- irisdf[indexes,]
irisdftest <- irisdf[-indexes,]
#irisdftrainz <- irisdftrain[-5]
#irisdftestz <- irisdftest[-5]
#irisdftrainscaled <- scale(irisdftrain[-5])
#irisdftrainscaled
#irisdftestscaled <- scale(irisdftest[-5])
#irisdftestscaled

irisdftrainmodel=nnet(Species~., irisdftrain, size =1) #은닉1
irisdftrainmodel

pre1<-predict(irisdftrainmodel, irisdftest, type = "class")
tm1<-table(irisdftest$Species, pre1)
tm1

summary(irisdftrainmodel)

irisdftrainmode2=nnet(Species~., irisdftrain, size =2) #은닉2
irisdftrainmode2

pre2<-predict(irisdftrainmode2, irisdftest, type = "class")
tm2<-table(irisdftest$Species, pre2)
tm2

summary(irisdftrainmode2)

irisdftrainmode3=nnet(Species~., irisdftrain, size =3) #은닉3
irisdftrainmode3

pre3<-predict(irisdftrainmode3, irisdftest, type = "class")
tm3<-table(irisdftest$Species, pre3)
tm3

summary(irisdftrainmode3)

irisdftrainmode4=nnet(Species~., irisdftrain, size =4) #은닉4
irisdftrainmode4

pre4<-predict(irisdftrainmode4, irisdftest, type = "class")
tm4<-table(irisdftest$Species, pre4)
tm4

summary(irisdftrainmode4)


#install.packages("neuralnet")
library(neuralnet)
#library(dplyr)
dev.new()
irisdf<-iris
class(irisdf)  #[1] "data.frame"
head(irisdf)
summary(irisdf)
names(irisdf)
str(iris)
# 1
indexes <- sample(150, 110)
irisdftrain <- irisdf[indexes,]
irisdftest <- irisdf[-indexes,]
#irisdftrainz <- irisdftrain[-5]
#irisdftestz <- irisdftest[-5]

irisdftrainscaled1<-scale(irisdftrain[-5])
irisdftrainscaled2<-irisdftrain[5]
irisdftrainscaled<-cbind(irisdftrainscaled1,irisdftrainscaled2)
irisdftrainscaled

irisdftestscaled1<-scale(irisdftest[-5])
irisdftestscaled2<-irisdftest[5]
irisdftestscaled<-cbind(irisdftestscaled1,irisdftestscaled2)
irisdftestscaled

irisdftrainscaled$nSpecies[irisdftrainscaled$Species=='setosa']<-1
irisdftrainscaled$nSpecies[irisdftrainscaled$Species=='versicolor']<-2
irisdftrainscaled$nSpecies[irisdftrainscaled$Species=='virginica']<-3

irisdftestscaled$nSpecies[irisdftestscaled$Species=='setosa']<-1
irisdftestscaled$nSpecies[irisdftestscaled$Species=='versicolor']<-2
irisdftestscaled$nSpecies[irisdftestscaled$Species=='virginica']<-3

irisdftrnemodel1 <- neuralnet(nSpecies~Sepal.Length + Sepal.Width + 
Petal.Length + Petal.Width, data = irisdftrainscaled, hidden = c(3,4))
irisdftrnemodel1
plot(irisdftrnemodel1)

predne1<-neuralnet::compute(irisdftrnemodel1, irisdftestscaled[c(1:4)])
predne1$net.result 
cor(predne1$net.result,irisdftestscaled$nSpecies)

toiin <- function(x) {
  return (round(x))
}
idx<- apply(predne1$net.result, c(1), toiin)

prediction <- c('setosa', 'versicolor', 'virginica')[idx]
prediction
table(prediction, irisdftestscaled$Species)


#5.3.6 연관 Titan

#다음과 같은 형식의 데이터
#A,B,C
#A,C
#A,D
#B,E,F


> class(Titanic)  #[1] "data.frame"
[1] "table"
> head(Titanic)
[1]  0  0 35  0  0  0
> summary(Titanic)
Number of cases in table: 2201 
Number of factors: 4 
Test for independence of all factors:
	Chisq = 1637.4455, df = 25, p-value = 0
	Chi-squared approximation may be incorrect
> 


# install.packages("arules")
# install.packages("arulesViz")
library(arules)
library(arulesViz)
dev.new()
class(Titanic)  #[1] "table"
head(Titanic)
summary(Titanic)

df <- as.data.frame(Titanic)
newtitan <- NULL
for (i in 1:4)
 { 
  newtitan <- cbind(newtitan, 
                       rep(as.character(df[,i]),df$Freq))  
 }
newtitan
newtitan <- as.data.frame(newtitan)
names(newtitan) <- names(df)[1:4]
names(newtitan)
dim(newtitan)
summary(newtitan)

rules.all <- apriori(newtitan)
inspect(rules.all)

rules <- apriori(newtitan,
          parameter = list(minlen=2, supp=0.005, conf=0.8),
          appearance = list(rhs=c("Survived=No", "Survived=Yes"),
          default="lhs"),
          control = list(verbose=F))
rules
rules.sorted <- sort(rules, by="lift")
inspect(rules.sorted)

#중복제거
#inspect(rules.sorted[is.redundant(rules.sorted)])
rules.pruned <- rules.sorted[!is.redundant(rules.sorted)]
inspect(rules.pruned)
plot(rules.pruned , method="graph")


#연관 관계
rules2 <- apriori(newtitan, control = list(verbose=F),
                 parameter = list(minlen=3, supp=0.002, conf=0.2),
                 appearance = list(default="none", rhs=c("Survived=Yes"),
                             lhs=c("Class=1st", "Class=2nd", "Class=3rd",
                             "Age=Child", "Age=Adult")))

rules.sorted2 <- sort(rules2, by="confidence")
inspect(rules.sorted2)


