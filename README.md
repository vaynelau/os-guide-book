# Beihang University Operating System Experiment Guide Book

## ChangeLog

### 2016/3/28
Use [Travis-CI](https://travis-ci.org/SivilTaram/BUAAOS-guide-book/builds) to build automatically and upload. You can get the latest version in [releases](https://github.com/SivilTaram/BUAAOS-guide-book/releases).

### 2016/3/12 
The book is hosted on Github.

### 2015/7/4
Plan to write the guide-book.

## How to Build

### Ubuntu

In `ubuntu`,you can easily build it by `.install.sh`.

```shell
git clone https://github.com/SivilTaram/BUAAOS-guide-book.git
cd BUAAOS-guide-book
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

If you find any `bug` or `wrong`, welcome to fork and pull request. 

If you just want to commit something but it may bring failure, you can commit as follow:

```shell
git commit -m "[ci skip] xxxx"
```

If your change to it can make build success, you can push as follow:

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