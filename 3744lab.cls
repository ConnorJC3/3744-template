\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{3744lab}[2020/09/08 Template class for EEL3744C lab reports]
\LoadClass[12pt]{report}

\RequirePackage{mathptmx}
\RequirePackage[includehead,left=0.5in,right=0.5in,top=0.5in,bottom=0.3in,headsep=-5.5pt]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titlesec}
\RequirePackage{anyfontsize}
\RequirePackage{xcolor}

\newcommand\classnumber[1]{\renewcommand\@classnumber{#1}}
\newcommand\@classnumber{\@latex@error{No \noexpand\classnumber given}\@ehc}
\newcommand\labnumber[1]{\renewcommand\@labnumber{#1}}
\newcommand\@labnumber{\@latex@error{No \noexpand\labnumber given}\@ehc}
\renewcommand\thesubsection{\arabic{subsection}}
\definecolor{wordpurple}{RGB}{112, 48, 160}

\fancypagestyle{lab}{%
  \fancyhf{}
  \setlength{\headheight}{35pt}
  \fancyhead[L]{\footnotesize University of Florida \\ Electrical \& Computer Engineering Dept. \\ Page \thepage/\pageref{LastPage}}
  \fancyhead[C]{\footnotesize \textbf{EEL3744C} -- \textbf{Microprocessor Applications} \\ Revision \textcolor{wordpurple}{\textbf{0}} \\ Lab \@labnumber{} Report: \@title}
  \fancyhead[R]{\footnotesize \@author \\Class \#: \@classnumber \\ \today}
  \renewcommand{\headrulewidth}{2pt}
  \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{lab}
\setlength{\headsep}{0pt}
\addtolength{\topmargin}{-0.25in}
\addtolength{\textheight}{+0.25in}

\titleformat{\section}[hang]{\fontsize{16pt}{4pt}\selectfont \bfseries \filcenter}{}{0pt}{\rule{\textwidth}{1.5pt} \\[2pt] \vphantom{Q}}[\vspace{-\parskip} \rule{\textwidth}{1.5pt}]
\titleformat{\subsection}[hang]{\fontsize{16pt}{4pt}\selectfont \bfseries}{SECTION \thesubsection \ }{0pt}{}
\titlespacing{\section}{0pt}{-2.5pt}{-3pt}
\titlespacing{\subsection}{0pt}{5pt}{0pt}
\setlength{\parskip}{8pt}

\newenvironment{notmet}{\section{REQUIREMENTS NOT MET}}{}
\newenvironment{problems}{\section{PROBLEMS ENCOUNTERED}}{}
\newenvironment{future}{\section{FUTURE WORK/APPLICATIONS}}{\newpage}
\newenvironment{prelab}{\section{PRE-LAB EXERCISES}}{\newpage}
\newenvironment{codecharts}{\section{PSEUDOCODE/FLOWCHARTS}}{\newpage}
\newenvironment{programcode}{\section{PROGRAM CODE}}{\newpage}
\let\appendix\undefined
\newenvironment{appendix}{\section{APPENDIX}}{}