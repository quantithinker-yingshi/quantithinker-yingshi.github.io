####################################################
#                                                  #
# ������Ӧ����������Ӧ����������γ̣������������� #
#                                                  #
# 2021-11-02                                       #
#                                                  #
# Author: Yingshi Huang                            #
#                                                  #
####################################################

# --------------------- ��Ϥһ��R ----------------------
## ��������

# 1. ���е��д��룬����԰����ŵ����У�Ȼ��CTRL + ENTER
#    Ҳ���԰����Ͻǵ�Run
print("Press ctrl + enter to execute this line in the console")
print("Excellent! You made it!")

# 2. ���������ű�������԰�CTRL + ALT + R

# 3. �����ʹ�����й�������������console�ﰴ���̵����¼�ͷ

## ��������

birth <- 1989          # ���Ǹ�ֵ���� <- ��ʾ����ֵ(1989)��������(birth)
year  <- 2021          # �����ͨ������ݼ� ALT + - ��������
age   <- year - birth  # �����ʹ���������ı���

# ���������Ϸ���environment����

# �����������ǲ�������
1object  <- 1          # ��ͷ����������
object 1 <- 1          # �м䲻�ܳ��ֿո�

# ���ǻ��ǲ�һ���ı���
object1  <- 1
Object1  <- 2
object.1 <- 3
object_1 <- 4
����һ   <- 5

# ����ͨ�����д����������
rm(list = ls())

# -------------------- ������������ ---------------------
## �����ǲ�ͬ���͵�����
logic <- FALSE
logic <- T
num <- 2.33
int <- 666L
chr <- "Hello"
fac <- factor(c("A", "B", "C"), ordered = T)     # ���������
fac <- factor(c("male", "female"))               # ���������

## �������洢��ͬ���͵�һά����
num.vector <- c(1, 2, 3)
chr.vector <- c(1, 2, 3, "four")

# ���������ķ�ʽ�кܶ�
vec.c <- c(1:9)
vec.seq     <- seq(from = 1, to = 9)
vec.seq.odd <- seq(from = 1, to = 9, by = 2)
vec.rep     <- rep(c(1:9), times = 2)
rep(c(1:9), each = 2)

# �����ͨ��[ ]��ѡ�������е�ĳ��Ԫ��
vec.rep[3]

## ���󣺴洢��ͬ���͵Ķ�ά���ݣ�ÿ�����ݵ�������ͬ
mat.col <- matrix(data = c(1:9), nrow = 3, ncol = 3)              # Ĭ�ϰ������
mat.row <- matrix(data = c(1:9), nrow = 3, ncol = 3, byrow = T)   # Ҳ���Ըĳɰ���

# �����ͨ��[x, y]��ѡ������е�x�е�y�е�Ԫ��
# ����ͨ��[x, ]/[, y]��ѡ���ض���x��/y��
mat.row[2, 3]
mat.row[2, ]
mat.row[, 3]

## ���飺����ά������

# ������һ����ά������
arr <- array(c(1:18), c(3, 3, 2))
arr

# �����ѡ��;������ƣ�ֻ��ά�ȱ����
arr[2, 3, 2]

## ���ݿ򣺿��Դ��治ͬ���͵ĵ�ά���ά���ݣ�ÿ�����ݵ�������ͬ
## (��ͬ�������ݵľ���)
participant <- data.frame(
  ID  = c("sub_01", "sub_02", "sub_03", "sub_04"),
  age = c(20, 21, 20, NA),
  gender = factor(c("M", "F", "M", "F")),
  treatment = c(F, F, T, T)
)
participant

# ���ݿ��ѡ��Ҳ�;�������
participant[1, 2]
participant[1, ]
participant$age

## �б���ʲô����������װ�������
listdata <- list(logic, num, chr, vec.c, mat.col, participant)
listdata
listdata[[5]][2, 3]

# -------------------- ����������� ---------------------

## ��������
1 + 1       # ��
1 - 1       # ��
2 * 2       # ��
3 / 3       # ��
4 ^ 4       # ��
4 ** 4
5 %% 3      # ����
5 %/% 3     # ��������

vec.rep
vec.rep + 1
vec.rep + c(1, 2, 3)     # ������������ʱ������ظ���
vec.rep + c(1, 2, 3, 4)  # ����������ʱ����
vec.rep * 2

mat.row
mat.row * mat.row        # Ԫ�����
mat.row %*% mat.row      # ����˷�
rowMeans(mat.row)        # �������ֵ��(1+2+3)/3
colMeans(mat.row)        # �������ֵ��(1+4+7)/3

## �߼�����
2 > 1
2 < 1
2 == 1         # �ϸ����
2 != 1         # ������
2 >= 2         # ���ڻ����

c(1,2,3) == 1
c(1,2,3) == c(1,2,3)

(2>1) & (3>1)  # ��
(2>1) & (1>3)

(2>1) | (3>1)  # ��
(2>1) | (1>3)

# ����&&��||��˵�������һ���ж�����һ�����������ǽ���������˷�ʱ��
if(FALSE && print(1)) {print(2)} else {print(3)}      # ����print(1)���ᱻ����
if(FALSE &  print(1)) {print(2)} else {print(3)}

if(TRUE || print(1)) {print(2)} else {print(3)}       # ����print(1)���ᱻ����
if(TRUE |  print(1)) {print(2)} else {print(3)}

# ---------------------- ���ݶ�д -----------------------
## ����Ŀ¼
getwd()
setwd("D:/ALL_ABOUT_WORK/Rwork")     # Ŀ¼Ҫʹ��б�� / �����Ƿ�б�� \
getwd()

## ��ȡ����

# 1. ����ͨ��read.������
response <- read.csv(file = "response_matrix.csv")

# 2. Ҳ����ֱ�ӵ�����Ϸ���import Dateset�������·���files

## д������
write.csv(x = participant, file = "participant.csv")

# ������������ڶ�дEXCEL������
library(openxlsx)
exceldata <- read.xlsx(xlsxFile = "DataExample.xlsx")
write.xlsx(x = rawdata[, -1], file = "DataExample_minver.xlsx")

# ������������ڶ�дSPSS������
library(haven)
spssdata <- read_sav(file = "DataExample_SPSS.sav")
write_sav(data = na.omit(spssdata), path = "DataExample_SPSS_cleanver.sav")

# ---------------------- �����ṹ -----------------------
## if statements

# ��������
input <- 3
if(input%%2 == 0){
  print("It is an even.")
}

if(input%%2 == 0){
  print("It is an even.")
}else{
  print("It is an odd.")
}

input <- 3.4
if(input%%2 == 0){
  print("It is an even.")
}else if(input%%2 == 1){
  print("It is an odd.")
}else{
  print("It is not an integer.")
}

# ����ϣ���õ�����߼����������ʹ��ifelse
input <- c(3, 4)
ifelse(test = (input%%2 == 0),
       yes = "It is an even.",
       no = "It is an odd.")

# �ͱ�����ҵ�йص����ӣ�
# ��ʹ��ţ������ѷ������ʱ����Ҫ�жϷ�ĸ�Ƿ�Ϊ0
slope <- 0
if (slope == 0) {
  warning("The slope is zero!")
  break
}

## ע������
# 1. Ҫ����ж�����֮���ǲ��ǻ����
# 2. Ҫ����жϵĽ���ǲ���������Ը

# ---------------------- ѭ���ṹ -----------------------
## for����Ҫ������ֵ����֪��

# ��������
for (i in 1:5){
  print(i)
}

for (i in c("A", "B", "C")){
  print(i)
}

# �ͱ�����ҵ�йص�����
for (i in 1:nperson){
  est.th[i] <- MLE(a, b, D, response)
}

for (i in 1:length(node)){
  numerator[i] <- node[i] * dnorm(node[i], mean, sd) * likelihood
  # ���������dnorm������̬�ֲ������ܶȺ���ֵ
}

## while����Ҫ������ֵ��δ֪�ģ�ֻ֪����ֹ������

# ��������
i <- 1
while(i < 6){
  print(i)
  i <- i + 1
}

# �ͱ�����ҵ�йص�����
while (delta <= precision){
  delta <- firstDeri / secondDeri
}

## ע������
# 1. ȷ��while��������������յ�ģ���Ȼ�����ܵ���ĵ���
# 2. ѭ�����������������ʱ�Ĳ��֣���ʹ�����������apply�庯��

# ---------------------- ������д -----------------------
## ����������

# ������Ҫ����������
install.packages("swirl")        # ����һ��learn R in R�İ���ʮ���Ƽ���������
install.packages("ggplot2")      # ����һ�����ڻ�ͼ�İ�������ǿ��

# Ȼ����ظ������������žͿ���ʹ������ĺ�����
library(ggplot2)

# �����������⣬����ԣ�
# 1. �鿴�����ĵ�
?ggplot2
help("ggplot2")

# 2. ��������ϵͳ
??ggplot2
help.search("ggplot2")

## �Աຯ��

# ��������
praise <- function(yourname){
  # ��亯��
  print(paste(yourname, "is the best person I have ever met!"))
}
praise(yourname = "Taylor")

# �����Ϊ��������һЩĬ�ϵ�ֵ
praise <- function(yourname, agree = T){
  print(paste(yourname, "is the best person I have ever met!"))
  if (agree == T){
    print("I think so!")
  }else{
    print("Beyonc�� is the best!")
  }
}
praise(yourname = "Taylor")
praise(yourname = "Taylor", agree = F)

# �ͱ�����ҵ�йص�����
likf <- function(th, re, a, b, D = 1.702) {
  # ����Ҫע�ͺú�������;, ����:
  # ����һ����������Ȼ����
  pi <- 1 /(1 + exp(-D * a * (th - b)))
  li <- prod(pi^re * (1 - pi)^(1 - re))         # prod���ڼ�������
  return(li)
}

th <- 1
re <- c(1, 1, 0, 1)
a <- c(0.8, 0.9, 0.5, 0.9)
b <- c(0.5, 0.4, 1, 0.6)
likf(th, re, a, b)

## ע������
# 1. ��������ʹ�õ��ı���ȫ����Ҫ�������ﶨ��ã���Ҫ����û����ı���
# 2. Ĭ��ֻ��������������ֵ�����Ҫ���ض��ֵ���߱�ģ���ʹ��returnָ��Ҫ���ص�����
# 3. ���û��ָ�������ֵ����һ���Ļ����ǵð��ú�����˳����������
# likf(re, th, a, b)
# likf(re = re, th = th, a = a, b = b)

# ----------------------- ���ӻ� ------------------------
## ������plot��һ����ֵ�����ֵ��ɢ��ͼ�ɣ�
theta  <- rnorm(1000)
est.th <- theta + rnorm(1000, 0, 0.5)
plot(theta, est.th)

# �����ͨ�����ڸ��ֲ���������ø��ÿ�
plot(theta, est.th,
     col = rgb(0.4, 0.4, 0.8, 0.6),             # ��ɢ�㻻һ����ɫ
     pch = 16,                                  # ɢ��ķ���
     cex = 1.3,                                 # ɢ��Ĵ�С
     cex.lab = 1.5,                             # ���������������С
     cex.axis = 1.5,                            # ������̶������С
     family = "sans",                           # ��������
     xlab = "true ��", ylab = "estimated ��",     # ���������������
     xlim = c(-3.5, 3.5), ylim = c(-3.5, 3.5))  # ���ƺ�������ķ�Χ
reg <- lm(est.th ~ theta)
abline(reg,
       lty = 1,           # ����������
       lwd = 2,           # �����Ŀ���
       col = "red")       # ��������ɫ

## ������ggplot2�ɣ�

# �Ƚ��������data.frame
ggplotdata <- data.frame(
  true = theta,
  estimated = est.th)

ggplot(ggplotdata, aes(x = true, y = estimated)) +
  geom_point(col = rgb(0.4, 0.4, 0.8, 0.6)) +
  geom_smooth(method = lm, color = "red", se = F)

