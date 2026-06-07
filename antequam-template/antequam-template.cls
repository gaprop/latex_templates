\ProvidesClass{antequam-template}[2026/07/06 v1.0]

% Declare default options (optional but recommended)
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

% Process options
\ProcessOptions\relax

% Load base class
\LoadClass[twoside,12pt,english]{book}

% \def\@accentcolor{0,80,0} % Default is dark green

\newcommand{\accentcolor}[1]{%
  \definecolor{accentcolor}{RGB}{#1}%
}
\newcommand{\headingcolor}[1]{%
  \definecolor{headingcolor}{RGB}{#1}%
}
\newcommand{\decorationcolor}[1]{%
  \definecolor{decorationcolor}{RGB}{#1}%
}

\newcommand{\authorName}[1]{%
  \def\@authorName{#1}
}
\newcommand{\bookTitle}[1]{%
  \def\@bookTitle{#1}
}

\newcommand{\initword}[2]{%
  \lettrine[lines=3]{\initfamily\textcolor{accentcolor}{#1}}{#2}
}


\usepackage{babel}
\usepackage[utf8]{inputenc}
\usepackage{xcolor}
% \definecolor{marron}{RGB}{60,30,10}
\definecolor{darkblue}{RGB}{0,0,80}
\definecolor{lightblue}{RGB}{80,80,80} 
% \definecolor{darkgreen}{RGB}{0,80,0}
% \definecolor{darkgray}{RGB}{0,0,80}
\definecolor{darkred}{RGB}{80,0,0}
\definecolor{shadecolor}{rgb}{0.97,0.97,0.97}
\usepackage[demo]{graphicx}
\usepackage{wallpaper}
\usepackage{wrapfig,booktabs}

\usepackage{fancyhdr}
\usepackage{lettrine}
\input Acorn.fd
\newcommand*\initfamily{\usefont{U}{Acorn}{xl}{n}}

\usepackage{geometry}
\geometry{
tmargin=5cm, 
bmargin=5cm, 
lmargin=5cm, 
rmargin=3cm,
headheight=1.5cm,
headsep=0.8cm,
footskip=0.5cm}


% \usepackage[full]{textcomp}
\renewcommand{\familydefault}{pplj} 
\usepackage[
final,
stretch=10,
protrusion=true,
tracking=true,
spacing=on,
kerning=on,
expansion=true]{microtype}

\setlength{\parskip}{1.3ex plus 0.2ex minus 0.2ex}


\usepackage{fourier-orns}

\newcommand{\ornamento}{\vspace{2em}\noindent \textcolor{decorationcolor}{\hrulefill~ \raisebox{-2.5pt}[10pt][10pt]{\leafright \decofourleft \decothreeleft  \aldineright \decotwo \floweroneleft \decoone   \floweroneright \decotwo \aldineleft\decothreeright \decofourright \leafleft} ~  \hrulefill \\ \vspace{2em}}}
\newcommand{\ornpar}{\noindent \textcolor{decorationcolor}{ \raisebox{-1.9pt}[10pt][10pt]{\leafright} \hrulefill \raisebox{-1.9pt}[10pt][10pt]{\leafright \decofourleft \decothreeleft  \aldineright \decotwo \floweroneleft \decoone}}}
\newcommand{\ornimpar}{\textcolor{decorationcolor}{\raisebox{-1.9pt}[10pt][10pt]{\decoone \floweroneright \decotwo \aldineleft \decothreeright \decofourright \leafleft} \hrulefill \raisebox{-1.9pt}[10pt][10pt]{\leafleft}}}

\makeatletter
\def\headrule{{\color{decorationcolor}\raisebox{-2.1pt}[10pt][10pt]{\leafright} \hrulefill \raisebox{-2.1pt}[10pt][10pt]{~~~\decofourleft \decotwo\decofourright~~~} \hrulefill \raisebox{-2.1pt}[10pt][10pt]{ \leafleft}}}
\makeatother

\fancyhf{}

\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{#1}}

\newcommand{\estcab}[1]{\itshape\textcolor{headingcolor}{\nouppercase #1}}

% Use Roman numerals for chapter numbers
\renewcommand{\thechapter}{\Roman{chapter}}

% Use Roman numerals for section numbers
\renewcommand{\thesection}{\Roman{section}}

\makeatletter
\fancyhead[LE]{\estcab{\@authorName}} % What here?
\fancyhead[RE]{\estcab{\@bookTitle}} % Book name
\makeatother
% \fancyhead[CE,CO]{\estcab{\decoone}}
\fancyhead[LO]{\estcab{\rightmark}} % malo cuando no hay section ~~~ \thesection
\fancyhead[RO]{\estcab{\leftmark}}

% \fancyhead[RO]{\bf\nouppercase{ \leftmark}}
% \fancyfoot[LE]{\bf \thepage ~~ \leafNE}
% \fancyfoot[RO]{ \leafNE  ~~ \bf \thepage}

\fancyfoot[LO]{
\ornimpar \\ \large \hfill \sffamily\bf \textcolor{decorationcolor}{\leafNE ~~~ \thepage}
}
\fancyfoot[RE]{\ornpar   \\ \large  \sffamily\bf \textcolor{decorationcolor}{\thepage ~~~ \reflectbox{\leafNE}}  \hfill}

\newenvironment{Section}[1]
{\section{\vspace{0ex}#1}}
{\vspace{12pt}\centering ------- \decofourleft\decofourright ------- \par}



\usepackage{lipsum}
\setlength{\parindent}{1em} % Sangría española
\pagestyle{fancy}

\renewcommand{\footnoterule}{\vspace{-0.5em}\noindent\textcolor{headingcolor}{\decosix \raisebox{2.9pt}{\line(1,0){100}} \lefthand} \vspace{.5em} }
\usepackage[hang,splitrule]{footmisc}
\addtolength{\footskip}{0.5cm}
\setlength{\footnotemargin}{0.3cm}
\setlength{\footnotesep}{0.4cm} 

\usepackage{chngcntr}
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}
