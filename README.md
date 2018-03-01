# BUAA Operating System Experiment Guide Book [![pipeline status](https://git.cscore.net.cn/star_os/guide-book/badges/master/pipeline.svg)](https://git.cscore.net.cn/star_os/guide-book/commits/master)
## ChangeLog

### 2018/3/1
Project moved to self-hosted Gitlab with Gitlab CI.

### 2016/8/7
Update the automatic compilation system.
Change all eps files into jpg files to avoid some compile-errors.
Update the Makefile to saving time.
Because of the historical reasons,we have to wget the fvextra.sty form their github.
Fix the .install.sh

### 2016/8/4
Fixed some bugs in .install.sh

### 2016/5/9
Fixed some decription on lab4.

### 2016/3/28
Use [Travis-CI](https://travis-ci.org/SivilTaram/BUAAOS-guide-book/builds) to build automatically and upload. You can get the latest version in [releases](https://github.com/SivilTaram/BUAAOS-guide-book/releases).

### 2016/3/12 
The book is hosted on Github.

### 2015/7/4
Plan to write the guide-book.

## How to Build

### Dependence
+ Adobe fonts

Available at guide-book/fonts, install it please.

+ TeX Live 2013 or later

+ pygments

+ fvextra.sty

To install pygments in Ubuntu:
```shell
sudo apt-get install python-pygments
```

### Ubuntu

In `ubuntu`,you can easily build it by `.install.sh`.

```shell
git clone git@git.cscore.net.cn:star_os/guide-book.git
cd guide-book
chmod a+x .install.sh
```
And then you can run `.install.sh` to install the all environments.

```shell
./.install.sh
```
And then you have all environments for building it.

If you want to build it,you can do as follow:
```shell
cd guide-book
make
```

And then you will get a `guide-book.pdf` in you directory `guide-book`.

### Windows

You can use `xelatex -shell-escape -8bit guide-book.tex` twice in directory `guide-book`, and you can get `guide-book.pdf`。

**Note: You should add `\setCJKmainfont{font-name}` to `guide-book.tex` as a result of loss of default zh-fonts in windows.**

## How to Contribute

If you find any *bug* or *wrong*, welcome to contribute to make the book better.

### Not Familiar with latex
If you are not familiar with *latex** and git, you can also open an [issue](https://git.cscore.net.cn/star_os/guide-book/issues). Just click the button `New issue` to notice us.

### Familiar with latex

If you are familiar with *latex* and *git*, welcome to fork and pull request. Please guarantee the PR pass the auto-build in Gitlab CI.

- If you just want to commit something but it may bring failure, you can commit as follow: (TODO)

```shell
git commit -m "[ci skip] xxxx"
```

- If your commits can make auto-build success, you can push as follow:

```shell
git tag -a v1.1.1 -m "tags content"
git push --tags
git push
```
*The `v1.1.1` is the version number of guide-book.*

And then you can make a pull request.

## Index Tree

|--- chapters (the main components of lab1~6)

|--- codes (the source code which is too long)

|--- fonts (four fonts of adobe used in ubuntu)

|--- images (images which appear in guide-book)

|--- preface (include teacher and authors' wishes)

|--- guide-book.tex (the main .tex file)

|--- title-page.tex

|--- Makefile

## Contributors

- He Tao(@[sighingnow](https://github.com/sighingnow))
- Liu Qian(@[SivilTaram](https://github.com/SivilTaram))
- Wang Luming(@[fzyz999](https://github.com/fzyz999))
- Wang Zhengdong(@[Jueast](https://github.com/Jueast))
