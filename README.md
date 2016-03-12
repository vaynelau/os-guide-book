# 北航小操作系统实验指导书

## 编译说明

- 在linux环境下:

在目录`guide-book`下，直接使用`make`即可生成`guide-book.pdf`文件，需要预装有`xelatex`环境，推荐使用`texlivefull-2015`。

- 在windows环境下:

使用`xelatex -shell-escape -8bit guide-book.tex` 2次即可得到`guide-book.pdf`文件。windows下值得注意的是，由于无默认字体，需要在`guide-book.tex`中添加`\setCJKmainfont{中文字体名}`即可显示中文。


## 版本变更记录

### 2016/3/12 
指导书开源,版本号 v1.0.0
### 2015/7/4 
指导书开始撰写

## 文件目录结构树
|--- chapters (包含了lab1-lab6的主要内容tex文件)

|--- codes (所有长段代码都在codes里有源文件)

|--- fonts (四种adobe字体,在linux下安装后可以直接使用)

|--- images (指导书中出现过的图片)

|--- preface (前言，包含了老师寄语与编者寄语)

|--- guide-book.tex (主tex文件，用于编译)

|--- title-page.tex (封面tex文件)

|--- Makefile 

## 主要贡献者(按姓名拼音排序)

- 何涛(@sighingnow)
- 刘乾(@SivilTaram)
- 王鹿鸣(@fzyz999)