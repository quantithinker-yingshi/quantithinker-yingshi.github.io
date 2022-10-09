####################################################
#                                                  #
# 《自适应测验与自适应诊断评估》课程：软件操作部分 #
#                                                  #
# 2021-11-02                                       #
#                                                  #
# Author: Yingshi Huang                            #
#                                                  #
####################################################

# --------------------- 熟悉一下R ----------------------
## 代码运行

# 1. 运行单行代码，你可以把鼠标放到该行，然后按CTRL + ENTER
#    也可以按右上角的Run
print("Press ctrl + enter to execute this line in the console")
print("Excellent! You made it!")

# 2. 运行整个脚本，你可以按CTRL + ALT + R

# 3. 如果想使用运行过的命令，你可以在console里按键盘的上下箭头

## 建立变量

birth <- 1989          # 这是赋值符号 <- 表示把数值(1989)赋给变量(birth)
year  <- 2021          # 你可以通过按快捷键 ALT + - 来输入它
age   <- year - birth  # 你可以使用所创建的变量

# 看看在右上方的environment窗口

# 这两种命名是不允许的
1object  <- 1          # 开头不能是数字
object 1 <- 1          # 中间不能出现空格

# 它们会是不一样的变量
object1  <- 1
Object1  <- 2
object.1 <- 3
object_1 <- 4
对象一   <- 5

# 可以通过这行代码清除环境
rm(list = ls())

# -------------------- 基本数据类型 ---------------------
## 以下是不同类型的数据
logic <- FALSE
logic <- T
num <- 2.33
int <- 666L
chr <- "Hello"
fac <- factor(c("A", "B", "C"), ordered = T)     # 有序的因子
fac <- factor(c("male", "female"))               # 无序的因子

## 向量：存储相同类型的一维数据
num.vector <- c(1, 2, 3)
chr.vector <- c(1, 2, 3, "four")

# 创建向量的方式有很多
vec.c <- c(1:9)
vec.seq     <- seq(from = 1, to = 9)
vec.seq.odd <- seq(from = 1, to = 9, by = 2)
vec.rep     <- rep(c(1:9), times = 2)
rep(c(1:9), each = 2)

# 你可以通过[ ]来选择向量中的某个元素
vec.rep[3]

## 矩阵：存储相同类型的二维数据，每列数据的数量相同
mat.col <- matrix(data = c(1:9), nrow = 3, ncol = 3)              # 默认按列填充
mat.row <- matrix(data = c(1:9), nrow = 3, ncol = 3, byrow = T)   # 也可以改成按行

# 你可以通过[x, y]来选择矩阵中第x行第y列的元素
# 或者通过[x, ]/[, y]来选择特定的x行/y列
mat.row[2, 3]
mat.row[2, ]
mat.row[, 3]

## 数组：更高维的数据

# 以下是一个三维的例子
arr <- array(c(1:18), c(3, 3, 2))
arr

# 数组的选择和矩阵类似，只是维度变多了
arr[2, 3, 2]

## 数据框：可以储存不同类型的单维或二维数据，每列数据的数量相同
## (不同类型数据的矩阵)
participant <- data.frame(
  ID  = c("sub_01", "sub_02", "sub_03", "sub_04"),
  age = c(20, 21, 20, NA),
  gender = factor(c("M", "F", "M", "F")),
  treatment = c(F, F, T, T)
)
participant

# 数据框的选择也和矩阵类似
participant[1, 2]
participant[1, ]
participant$age

## 列表：什么都可以往里装，最灵活
listdata <- list(logic, num, chr, vec.c, mat.col, participant)
listdata
listdata[[5]][2, 3]

# -------------------- 基本运算操作 ---------------------

## 算术运算
1 + 1       # 加
1 - 1       # 减
2 * 2       # 乘
3 / 3       # 除
4 ^ 4       # 幂
4 ** 4
5 %% 3      # 余数
5 %/% 3     # 整数除法

vec.rep
vec.rep + 1
vec.rep + c(1, 2, 3)     # 长度整数倍的时候可以重复加
vec.rep + c(1, 2, 3, 4)  # 非整数倍的时候不行
vec.rep * 2

mat.row
mat.row * mat.row        # 元素相乘
mat.row %*% mat.row      # 矩阵乘法
rowMeans(mat.row)        # 按行求均值：(1+2+3)/3
colMeans(mat.row)        # 按列求均值：(1+4+7)/3

## 逻辑运算
2 > 1
2 < 1
2 == 1         # 严格等于
2 != 1         # 不等于
2 >= 2         # 大于或等于

c(1,2,3) == 1
c(1,2,3) == c(1,2,3)

(2>1) & (3>1)  # 和
(2>1) & (1>3)

(2>1) | (3>1)  # 或
(2>1) | (1>3)

# 对于&&和||来说，如果第一个判断足以一锤定音，它们将不会继续浪费时间
if(FALSE && print(1)) {print(2)} else {print(3)}      # 命令print(1)将会被忽略
if(FALSE &  print(1)) {print(2)} else {print(3)}

if(TRUE || print(1)) {print(2)} else {print(3)}       # 命令print(1)将会被忽略
if(TRUE |  print(1)) {print(2)} else {print(3)}

# ---------------------- 数据读写 -----------------------
## 工作目录
getwd()
setwd("D:/ALL_ABOUT_WORK/Rwork")     # 目录要使用斜杠 / 而不是反斜杠 \
getwd()

## 读取数据

# 1. 可以通过read.族的语句
response <- read.csv(file = "response_matrix.csv")

# 2. 也可以直接点击右上方的import Dateset或者右下方的files

## 写出数据
write.csv(x = participant, file = "participant.csv")

# 这个包可以用于读写EXCEL的数据
library(openxlsx)
exceldata <- read.xlsx(xlsxFile = "DataExample.xlsx")
write.xlsx(x = rawdata[, -1], file = "DataExample_minver.xlsx")

# 这个包可以用于读写SPSS的数据
library(haven)
spssdata <- read_sav(file = "DataExample_SPSS.sav")
write_sav(data = na.omit(spssdata), path = "DataExample_SPSS_cleanver.sav")

# ---------------------- 条件结构 -----------------------
## if statements

# 基础功能
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

# 当你希望得到多个逻辑结果，可以使用ifelse
input <- c(3, 4)
ifelse(test = (input%%2 == 0),
       yes = "It is an even.",
       no = "It is an odd.")

# 和本次作业有关的例子：
# 在使用牛顿拉夫逊迭代的时候，需要判断分母是否为0
slope <- 0
if (slope == 0) {
  warning("The slope is zero!")
  break
}

## 注意事项
# 1. 要检查判断条件之间是不是互斥的
# 2. 要检查判断的结果是不是如你所愿

# ---------------------- 循环结构 -----------------------
## for：需要遍历的值是已知的

# 基础功能
for (i in 1:5){
  print(i)
}

for (i in c("A", "B", "C")){
  print(i)
}

# 和本次作业有关的例子
for (i in 1:nperson){
  est.th[i] <- MLE(a, b, D, response)
}

for (i in 1:length(node)){
  numerator[i] <- node[i] * dnorm(node[i], mean, sd) * likelihood
  # 你可以利用dnorm返回正态分布概率密度函数值
}

## while：需要遍历的值是未知的，只知道终止的条件

# 基础功能
i <- 1
while(i < 6){
  print(i)
  i <- i + 1
}

# 和本次作业有关的例子
while (delta <= precision){
  delta <- firstDeri / secondDeri
}

## 注意事项
# 1. 确保while的条件语句是有终点的，不然它会跑到天荒地老
# 2. 循环是整个程序中最费时的部分，多使用向量运算或apply族函数

# ---------------------- 函数编写 -----------------------
## 软件包调用

# 首先需要下载软件包
install.packages("swirl")        # 这是一个learn R in R的包，十分推荐用于入门
install.packages("ggplot2")      # 这是一个用于绘图的包，功能强大

# 然后加载该软件包，接着就可以使用里面的函数了
library(ggplot2)

# 当你遇到问题，你可以：
# 1. 查看帮助文档
?ggplot2
help("ggplot2")

# 2. 搜索帮助系统
??ggplot2
help.search("ggplot2")

## 自编函数

# 基础功能
praise <- function(yourname){
  # 夸夸函数
  print(paste(yourname, "is the best person I have ever met!"))
}
praise(yourname = "Taylor")

# 你可以为变量添加一些默认的值
praise <- function(yourname, agree = T){
  print(paste(yourname, "is the best person I have ever met!"))
  if (agree == T){
    print("I think so!")
  }else{
    print("Beyoncé is the best!")
  }
}
praise(yourname = "Taylor")
praise(yourname = "Taylor", agree = F)

# 和本次作业有关的例子
likf <- function(th, re, a, b, D = 1.702) {
  # 你需要注释好函数的用途, 比如:
  # 计算一名考生的似然函数
  pi <- 1 /(1 + exp(-D * a * (th - b)))
  li <- prod(pi^re * (1 - pi)^(1 - re))         # prod用于计算连乘
  return(li)
}

th <- 1
re <- c(1, 1, 0, 1)
a <- c(0.8, 0.9, 0.5, 0.9)
b <- c(0.5, 0.4, 1, 0.6)
likf(th, re, a, b)

## 注意事项
# 1. 函数里所使用到的变量全部都要在括号里定义好，不要调用没定义的变量
# 2. 默认只返回最后算出来的值，如果要返回多个值或者别的，请使用return指定要返回的内容
# 3. 如果没有指定输入的值是哪一个的话，记得按该函数的顺序依次输入
# likf(re, th, a, b)
# likf(re = re, th = th, a = a, b = b)

# ----------------------- 可视化 ------------------------
## 试试用plot画一个真值与估计值的散点图吧！
theta  <- rnorm(1000)
est.th <- theta + rnorm(1000, 0, 0.5)
plot(theta, est.th)

# 你可以通过调节各种参数让它变得更好看
plot(theta, est.th,
     col = rgb(0.4, 0.4, 0.8, 0.6),             # 给散点换一种颜色
     pch = 16,                                  # 散点的符号
     cex = 1.3,                                 # 散点的大小
     cex.lab = 1.5,                             # 坐标轴名称字体大小
     cex.axis = 1.5,                            # 坐标轴刻度字体大小
     family = "sans",                           # 设置字体
     xlab = "true θ", ylab = "estimated θ",     # 给定横纵轴的名称
     xlim = c(-3.5, 3.5), ylim = c(-3.5, 3.5))  # 控制横纵坐标的范围
reg <- lm(est.th ~ theta)
abline(reg,
       lty = 1,           # 线条的类型
       lwd = 2,           # 线条的宽度
       col = "red")       # 线条的颜色

## 试试用ggplot2吧！

# 先将数储存成data.frame
ggplotdata <- data.frame(
  true = theta,
  estimated = est.th)

ggplot(ggplotdata, aes(x = true, y = estimated)) +
  geom_point(col = rgb(0.4, 0.4, 0.8, 0.6)) +
  geom_smooth(method = lm, color = "red", se = F)


