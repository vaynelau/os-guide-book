# Beihang University Operating System Experiment Guide Book

## ChangeLog

### 2016/3/28
Use [Travis-CI](https://travis-ci.org/SivilTaram/BUAAOS-guide-book/builds) to build automatically and upload. You can get the latest version in [releases](https://github.com/SivilTaram/BUAAOS-guide-book/releases).

### 2016/3/12 
The book is hosted on Github.

### 2015/7/4
Plan to write the guide-book.

## How to Build

- Ubuntu

In `ubuntu`,you can easily build it by `.install.sh`.

1.
```shell
git clone https://github.com/SivilTaram/BUAAOS-guide-book.git
```
2.
```shell
cd BUAAOS-guide-book
chmod a+x .install.sh
```
3.
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

- Windows:

You can use `xelatex -shell-escape -8bit guide-book.tex` twice in directory `guide-book`, and you can get `guide-book.pdf`。

*Note: You should add `\setCJKmainfont{font-name}` to `guide-book.tex` as a result of loss of default zh-fonts in windows.*

## How to Auto-Build and Upload

If you fork and pull request, you can push as follow:

```shell
git tag -a v1.1.1 -m "tags content"
git push --tags
git push
```

The `v1.1.1` is the version number of guide-book.


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