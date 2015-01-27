%%%%% ------------------------------------------------------------------------------------------
%%
%%     This is file `njustThesis.cls',
%%     This file was recreated by Jie Cheng from 'ucasthesis.cls' Ref [1, 2]
%%
%%%%% ------------------------------------------------------------------------------------------
%% GUN
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%%
%%%%% ------------------------------------------------------------------------------------------
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
%%%%***************************** version infomation *************************************
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{sty/njustThesis}
  [2015/01/05 v0.1 njustThesis
   document class]
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%*************************** Declare Options *****************************************
%%
%% end-user parameters, each option is declared by one declare option command
\newif\ifNJUST@typeinfo \NJUST@typeinfotrue       % turn on Copyright
%\newif\ifNJUST@typeinfo \NJUST@typeinfofalse     % turn off Copyright
\DeclareOption{notypeinfo}{\NJUST@typeinfofalse}
\DeclareOption{draftinfo}{% draft information reminder
  \NJUST@typeinfotrue%
}
\DeclareOption*{% handle non-implemented options
  \PassOptionsToClass{\CurrentOption}{ctexbook}%
}
%% terminates all options processing
\ProcessOptions\relax
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%*************************** loadclass infomation ************************************
%%
\LoadClass[cs4size,a4paper,fancyhdr,fntef,hyperref,UTF8]{ctexbook}[2011/03/11]
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%***************************** package infomation ***********************************
%%
%% font
%% math packages
\RequirePackage{mathtools,amsthm,amsfonts,amssymb,bm}
%% graphics packages
\RequirePackage{graphicx,psfrag,flafter,subfigure}
%% hyperref package
\hypersetup{CJKbookmarks,%
       bookmarksnumbered,%
              colorlinks,%
               linkcolor=blue,%
               citecolor=blue,%
              plainpages=false,%
            pdfstartview=FitH
}
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%************************ load class configuretion ************************************
%%
\AtEndOfPackage{%class cfg loaded after package, makes commands at preamble take effect
  \makeatletter
  \InputIfFileExists{sty/njustThesis.cfg}{}{}
  \makeatother
}
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%******************************* page layout ******************************************
%%
\oddsidemargin 0.8 true cm
\if@twoside
  \evensidemargin 0 true cm
\else
  \evensidemargin 0.8 true cm
\fi
\textheight 24 true cm
\textwidth 15.5 true cm
\topmargin -0.6 true cm
\headheight 15pt
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%********************* some style control commands ********************************
%%
%% redefine \cleardoublepage to handle both oneside and twoside modes
\def\cleardoublepage{%
  \clearpage%
  \if@twoside%
    \ifodd\c@page%
      % do nothing
    \else%
      \thispagestyle{empty}%
      \hbox{}%
      \newpage%
      \if@twocolumn%
        \hbox{}%
        \newpage%
      \fi%
    \fi%
  \fi}%
%% space used in items title
\newcommand\NJUSTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
%% underline
\def\NJUST@underline[#1]#2{%
  \CTEXunderline{\hbox to #1{\hfill#2\hfill}}}
\def\NJUSTunderline{\@ifnextchar[\NJUST@underline\CTEXunderline}
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%********************** chinese titlepage items **************************************
%% predefine all the items which will be used later
%% about format
\newcommand\classification[1]{\def\NJUST@value@classification{#1}}
\newcommand\UDC[1]{\def\NJUST@value@UDC{#1}}
\newcommand\UDCfootnote[1]{\def\NJUST@value@UDCfootnote{#1}}
\newcommand\confidential[1]{\def\NJUST@value@confidential{#1}}
\newcommand\incoverthesis[1]{\def\NJUST@value@incoverthesis{#1}}
%% about school and thesis title
\newcommand\school[1]{\def\NJUST@value@school{#1}}
\newcommand\schoollogo[2]{\def\NJUST@value@schoollogo{\includegraphics[#1]{#2}}}
\newcommand\institute[1]{\def\NJUST@value@institute{#1}}
\renewcommand\title[2][\NJUST@value@title]{%
  \def\NJUST@value@title{#2}
  \def\NJUST@value@titlemark{\MakeUppercase{#1}}}
%% about author
\renewcommand\author[1]{\def\NJUST@value@author{#1}}
\newcommand\degree[1]{\def\NJUST@value@degree{#1}}
\newcommand\major[1]{\def\NJUST@value@major{#1}}
%% about advisor & co-advisor
\newcommand\advisor[1]{\def\NJUST@value@advisor{#1}}
\newcommand\advisortitle[1]{\def\NJUST@value@advisortitle{#1}}
\newcommand\advisorinstitute[1]{\def\NJUST@value@advisorinstitute{#1}}
\newcommand\coadvisor[1]{\def\NJUST@value@coadvisor{#1}}
\newcommand\coadvisortitle[1]{\def\NJUST@value@coadvisortitle{#1}}
\newcommand\coadvisorinstitute[1]{\def\NJUST@value@coadvisorinstitute{#1}}
%% about viva committee
\newcommand\chairman[1]{\def\NJUST@value@chairman{#1}}
\newcommand\reviewer[1]{\def\NJUST@value@reviewer{#1}}
%% about date 
\newcommand\submitdate[1]{\def\NJUST@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\NJUST@value@defenddate{#1}}
\newcommand\outcoverdate[1]{\def\NJUST@value@outcoverdate{#1}}
\newcommand\incoverdate[1]{\def\NJUST@value@incoverdate{#1}}
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%**************************** make chinese titlepage ********************************
%% 1. cover page
\renewcommand\maketitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \songti\zihao{5}
    	\NJUST@label@classification~               %% header
	\NJUSTunderline[156pt]{\NJUST@value@classification}
		\hfill
	\NJUST@label@confidential~
	\NJUSTunderline[156pt]{\NJUST@value@confidential}\hspace{1.4cm}
   \vskip 10pt
   	 \NJUST@label@UDC~
      	\NJUSTunderline[149pt]{\NJUST@value@UDC}
            \hfill
      	\NJUSTunderline[0pt]{}
    \vskip \stretch{2}
        \bf\songti\zihao{1}\NJUST@label@thesis      %% Thesis title
    \vskip \stretch{2}
      \bf\heiti\zihao{2}\NJUSTunderline{~\NJUST@value@title~}
    \vskip \stretch{1}
      \bf\kaishu\zihao{-2}\NJUSTunderline{~\NJUST@value@author~}
    \vskip \stretch{2}
    \normalfont\songti\zihao{-4}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}
    \begin{tabular}{llclr}
      \NJUST@label@advisor &
      \multicolumn{4}{l}{\NJUSTunderline[299pt]{{\bf\kaishu\zihao{3}\NJUST@value@advisor} \hspace{4pt} {\kaishu\zihao{4}\NJUST@value@advisortitle}}}
    \\
      \NJUST@label@coadvisor &
      \multicolumn{4}{l}{\NJUSTunderline[299pt]{{\bf\kaishu\zihao{3}\NJUST@value@coadvisor} \hspace{4pt} {\kaishu\zihao{4}\NJUST@value@coadvisortitle}}}
    \\
      \NJUST@label@degree &
      \NJUSTunderline[90pt]{\bf\kaishu\zihao{3}\NJUST@value@degree} & \hspace{4pt} &
      \multicolumn{2}{r}{\NJUST@label@major\NJUSTunderline[150pt]{\bf\kaishu\zihao{3}\NJUST@value@major}}
    \\
      \NJUST@label@submitdate &
      \NJUSTunderline[90pt]{\rmfamily\zihao{3}\NJUST@value@submitdate} & &
       \multicolumn{2}{r}{\NJUST@label@defenddate\NJUSTunderline[124pt]{\rmfamily\zihao{3}\NJUST@value@defenddate}}
    \\
      \NJUST@label@school &
      \multicolumn{4}{l}{\NJUSTunderline[299pt]{\bf\kaishu\zihao{3}\NJUST@value@school}}
    \\
      &&&\multicolumn{2}{r}{\NJUST@label@chairman}\NJUSTunderline[80pt]{\NJUST@value@chairman}
    \\
      &&&\multicolumn{2}{r}{\NJUST@label@reviewer}\NJUSTunderline[80pt]{\NJUST@value@reviewer}
    \\[2em]
     \multicolumn{5}{c}{\NJUST@value@outcoverdate}
    \end{tabular}
  \end{center}
 \vspace{2em}
 \NJUST@value@UDCfootnote
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \ifNJUST@typeinfo
      \vspace*{\stretch{1}}
      \begin{footnotesize}
        \noindent
        Typeset by \LaTeXe{} at \CTEX@todayold \\
        With package \NJUSTfileinfo \hspace{2pt} \NJUSTfileversion (\NJUSTfiledate) from https://github.com/jiec827/njustThesis
        \end{footnotesize}
    \fi
    \cleardoublepage
  \fi
}
%%%%% ------------------------------------------------------------------------------------------
%% 2. page with logo
\newcommand\makeincovertitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    %\kaishu\zihao{-2}\NJUST@value@country\NJUST@value@degree\NJUST@value@incoverthesis
    \kaishu\zihao{-2}\NJUST@value@degree\NJUST@value@incoverthesis
    \\[3.25cm]
    \bf\heiti\zihao{2}\NJUST@value@title
    \\[2.2cm]
    \begin{tabular}{rl}
    \bf\kaishu\zihao{-2}\NJUST@label@incoverauthor & \bf\kaishu\zihao{-2}\NJUST@value@author 
    \\[25pt]
    \bf\kaishu\zihao{-2}\NJUST@label@incoveradvisor & \bf\kaishu\zihao{-2}\NJUST@value@advisor\hspace{4pt}\NJUST@value@advisortitle
    \\
    \bf\kaishu\zihao{-2}\NJUST@label@incovercoadvisor & \bf\kaishu\zihao{-2}\NJUST@value@coadvisor\hspace{4pt}\NJUST@value@coadvisortitle
    \end{tabular}
    \vskip 5pt
    \parbox[c][7cm][c]{\textwidth}{%
    \centering
    %\includegraphics[width=5cm,height=5cm]{img/njust_logo.jpg}
    }%
    \vskip 14pt
    \bf\songti\zihao{-2}\NJUST@value@school
    \vskip 8pt
      \bf\songti\zihao{-2}\NJUST@value@incoverdate
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
%%%%% ------------------------------------------------------------------------------------------
%%
\newcommand\englishtitle[1]{\def\NJUST@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\NJUST@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\NJUST@value@englishadvisor{#1}}
\newcommand\englishadvisortitle[1]{\def\NJUST@value@englishadvisortitle{#1}}
\newcommand\englishcoadvisor[1]{\def\NJUST@value@englishcoadvisor{#1}}
\newcommand\englishcoadvisortitle[1]{\def\NJUST@value@englishcoadvisortitle{#1}}
\newcommand\englishdegree[1]{\def\NJUST@value@englishdegree{#1}}
\newcommand\englishmajor[1]{\def\NJUST@value@englishmajor{#1}}
\newcommand\englishinstitute[1]{\def\NJUST@value@englishinstitute{#1}}
\newcommand\englishdate[1]{\def\NJUST@value@englishdate{#1}}
%%%%% ------------------------------------------------------------------------------------------
%%
%%%%*********************** make english titlepage **************************************
%%
\newcommand\makeenglishtitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \vspace*{-18pt}
      \rmfamily\zihao{-2} \NJUST@label@englishdegree\NJUST@value@englishdegree
    \vskip 20pt
      \rmfamily\bf\zihao{2} \NJUST@value@englishtitle
    \vskip 30pt 
      \normalfont\it\zihao{-2}\NJUST@label@englishauthor
      \\
      \bf\zihao{-2}\emph\NJUST@value@englishauthor
    \vskip 30pt 
    \begin{tabular}{rl}
      \normalfont\it\zihao{-2} \NJUST@label@englishadvisor & \bf\emph\NJUST@value@englishadvisor\\
      \normalfont\it\zihao{-2} \NJUST@label@englishcoadvisor \hspace{45pt} & \normalfont\it\zihao{-2} \bf\emph\NJUST@value@englishcoadvisor
    \end{tabular}
    \vskip \stretch{2}
      \normalfont\zihao{-2} \NJUST@value@englishinstitute
    \vskip 30pt
      \normalfont\zihao{-2} \NJUST@value@englishdate
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
%%%%*********************** make statement titlepage *************************************
%% 1. statement
\cleardoublepage
\thispagestyle{empty}
\newcommand\statement[1]{%
  \vskip -5pt
    \parbox{\textwidth}{\centering\bf\songti\zihao{3}\NJUST@label@statement}
  \vskip 13pt
    \parbox{\textwidth}{\normalfont\zihao{4}\renewcommand{\baselinestretch}{1.6}\hspace{2em}\zihao{4}#1}
  \vskip 1.8cm
    \parbox{\textwidth}{\noindent{}\zihao{4}\NJUST@label@authorsign\hspace{3.5cm}\NJUST@label@signdate}
  \vskip 4.45cm
}%
%% 2. accredit
\newcommand\accredit[1]{%
    \parbox{\textwidth}{\centering\bf\songti\zihao{3}\NJUST@label@accredit}
  \vskip 1.6cm
    \parbox{\textwidth}{\normalfont\zihao{4}\renewcommand{\baselinestretch}{1.6}\hspace{2em}\zihao{4}#1}%
  \vskip 1.8cm
    \parbox{\textwidth}{\noindent{}\zihao{4}\NJUST@label@authorsign\hspace{3.5cm}\NJUST@label@signdate}%
}%
\clearpage
\if@twoside
    \thispagestyle{empty}
\cleardoublepage
\fi
%%%%% ------------------------------------------------------------------------------------------
%% 
%%%%**************************** page setting **************************************
%% set page style by fancyhdr:
  %% The syntax is: \fancyhead[selectors]{output you want}
  %% E Even page
  %% O Odd page
  %% L Left field
  %% C Center field
  %% R Right field
  %% H Header
  %% F Footer
  %% so [CE,RO] will refer to the center of the even pages and to the right side of the odd pages.
%% configure fancy style
%% change page NO to Roman only for frontmatter 
\renewcommand\frontmatter{\pagenumbering{Roman}}
%%
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyfoot[R]{\songti\zihao{-5} --~{\thepage}~--}
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
\pagestyle{fancy}
  \fancyhf{}
  \fancyhead{} % clear all fields
  \fancyhead[LO]{\songti\zihao{-5}\NJUST@value@degree\NJUST@value@incoverthesis}
  \fancyhead[RO]{\songti\zihao{-5}\NJUST@value@titlemark}
  \fancyhead[LE]{\songti\zihao{-5} \leftmark}%
  \fancyhead[RE]{\songti\zihao{-5}\NJUST@value@degree\NJUST@value@incoverthesis}%
  \fancyfoot[RO,LE]{\zihao{-5} --~\thepage~--}
%%%%% ------------------------------------------------------------------------------------------
%%  
%%%%**************************** make abstract & keywords *****************************
%% 1. CHN abstract
\newenvironment{abstract}
  {{\centering\Nchapter{\NJUST@label@abstract}}}
  {}
%% 2. CHN kewords
\newcommand\keywords[1]{%
  %\vspace{2ex}\noindent{\heiti \NJUST@label@keywords} #1}
  \vspace{2ex}\noindent{\bf\songti\zihao{4} \NJUST@label@keywords} #1}
%% 3. Eng abstract
\newenvironment{englishabstract}
  {{\centering\Nchapter{\NJUST@label@englishabstract}}}
  {}
%% 4. Eng keywords
\newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf\songti\zihao{4} \NJUST@label@englishkeywords} #1}
%%
%% 5. other settings
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \leaders\hbox{$\m@th\mkern 1mu\bm{\bm\cdot}\mkern 1mu$}
      \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi
}%
%%%%% ------------------------------------------------------------------------------------------
%%  
%%%%******************************** make contents **************************************
%% 
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    {\centering\chapter*{\contentsname}}%
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}
\newcommand\Nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi
}
%%%%% ------------------------------------------------------------------------------------------
%%  
%%%%************************* make environments *********************************
%% 0. list of figures, tables and bibtex
%% seperately
\renewcommand*\listoffigures{%
  {\centering
  \chapter*{\listfigurename}%
  \@mkboth{\MakeUppercase\listfigurename}%
          {\MakeUppercase\listfigurename}%
  \@starttoc{lof}%% list of figures
  }
}
%%
\renewcommand*\listoftables{%
  {\centering
  \chapter*{\listtablename}%
  \@mkboth{\MakeUppercase\listtablename}%
          {\MakeUppercase\listtablename}%
  \@starttoc{lot}%% list of tables
  }
}
%% figure and table
\newcommand*\listoffiguresandtables{%
  {\centering
  \chapter*{\NUST@listfiguresandtablesname}%
  \@mkboth{\MakeUppercase\NUST@listfiguresandtablesname}%
          {\MakeUppercase\NUST@listfiguresandtablesname}%
  \@starttoc{lof}%% list of figures
  \bigskip       %% space
  \@starttoc{lot}%% list of tables
  }
}
%%

%% 1. symbol
\newenvironment{symbolname}
  {\Nchapter{\NJUST@label@symbolname}}
  {}
%% 2. bibliography
\renewenvironment{thebibliography}[1]
     {\Nchapter{\centering\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
%% 3. publications
\newenvironment{publications}[1]
     {{\centering\Nchapter{\NJUST@label@publications}}%
      \@mkboth{\MakeUppercase\NJUST@label@publications}
              {\MakeUppercase\NJUST@label@publications}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `publications' environment}}%
      \endlist}
%% 4. resume
\newenvironment{resume}
  {{\centering\Nchapter{\NJUST@label@resume}}}
  {}
\newenvironment{resumesection}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 2\ccwd}
   \item\relax}
  {\endlist}
%% 5. resumelist
\newenvironment{resumelist}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 4\ccwd
           \itemindent -2\ccwd
           \listparindent\itemindent}
   \item\relax}
  {\endlist}
%% 6. thanks
\renewenvironment{thanks}
  {{\centering\Nchapter{\NJUST@label@thanks}}}
  {}
%%
%%%%% ------------------------------------------------------------------------------------------
%%  
%%%%*************************** public vars for thesis ***********************************
%% 
\newcounter{nlgcounter} 
\newenvironment{nlglist}{%
\begin{list}{{(\arabic{nlgcounter})}} %
    {
     \usecounter{nlgcounter}
     \setlength{\leftmargin}{0cm}   
     \setlength{\parsep}{\parskip}    
     \setlength{\topsep}{1ex}        
     \setlength{\itemsep}{0.4ex plus 0.5ex}        
     \setlength{\labelsep}{0.3em}     
     \setlength{\itemindent}{46pt}    
     \setlength{\listparindent}{27pt} 
    }}
{\end{list}}  
\renewcommand{\labelenumi}{(\theenumi)}
 
\endinput
%%
%% End of file `njustThesis.cls'.
