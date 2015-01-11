njustThesis
================================================================================
Description: 

LaTeX (degree) thesis template for Nanjing University of Sci & Tech

References: 

[1]. ucasthesis(https://github.com/mohuangrui/ucasthesis)

[2]. latex-njust808(https://code.google.com/p/latex-njust808/)

Date: 2015-01-03

Status: start(2015-01-03) - 

================================================================================
Pre-requirements:

1. MacTex (ctex included, version > tex-live2013);

2. config ctex for MacTex 
(Ref:http://www.latexstudio.net/latex-tip-791-how-to-configure-mactex-of-chinese-support/)

================================================================================
Notes:

1. Most parts of the projects are copyed from the aforementioned references.


2. Objects of this project including: 

    Transplant project[2] from code.google to gitHub, and trying to improve the 
readability of the codes(ecourage open-source projects);

    Updating the new logos; 

    Make it more compatible with MacTex.

================================================================================
Download:

    git clone https://github.com/jiec827/njustThesis

================================================================================
Usage:

    1. 修改学位论文封面信息（tex/cover.tex），并将对应的具体章节内容添加至tex目录下的其他文件内（正文部分额外添加的章节需要在myThesis.tex文件中使用input命令包含）；

    2. 采用命令xelatex myThesis.tex进行编译；

    3. 命令行makeindex myThesis.nlo -s nomencl.ist -o myThesis.nls生成术语链接；

    4. xelatex myThesis.tex重新编译生成pdf文件。

================================================================================
Files:

0. LICENSE: public license

1. README.md: introduction of this project

2. howToUse.pdf: a sample pdf file to illustrate how to use this template

3. njustThesis.tex: main function

4. sty: (directory) including files

5. tex: (directory) all chapters/sections included in main function 
njustThesis.tex

6. img: (directory) all images used in this thesis(prefer verctor image: eps, 
pdf, fig, etc)

7. bib: (directory) all references used in this thesis(in bibTeX format)

================================================================================