\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{icis}[2014/03/01 ICIS Conference submission style]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[10pt,twoside]{article}

% Must have the following two lines at the top of your document
% %!TEX TS-program = xelatex
% %!TEX encoding = UTF-8 Unicode

% These 3 are required to use the Georgia font family
\RequirePackage{xltxtra}
\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{graphicx}
\RequirePackage[labelsep=period,font=bf]{caption}   % Replace caption colon with
                                % period
\RequirePackage[margin=0.75in]{geometry}

% Get rid of spacing inside lists
\RequirePackage{enumitem}
\setlist{noitemsep}

\defaultfontfeatures{Scale=MatchLowercase}
\setmainfont[Ligatures={Common,TeX}]{Georgia}
% \setromanfont[Numbers=Uppercase]{Georgia}

\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\renewcommand{\Huge}{\fontsize{20pt}{24pt}\selectfont}
\renewcommand{\LARGE}{\fontsize{13pt}{15pt}\selectfont}
\renewcommand{\Large}{\fontsize{12pt}{14pt}\selectfont}
\renewcommand{\large}{\fontsize{11pt}{13pt}\selectfont}
\setlength{\textwidth}{7in}
\setlength{\textheight}{9.25in}
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}


\let\@researchtype\@empty
\let\@shorttitle\@empty
\let\@track\@empty

% TODO: Make this work. Not sure why it's outputting the variable definition
\newcommand{\researchtype}[1][Completed Research]{\gdef\@researchtype{#1}}
\newcommand{\shorttitle}[1][8 words or less]{\gdef\@shorttitle{#1}}
\newcommand{\track}[1][Human Computer Interaction]{\gdef\@track{#1}}


% TODO: Fix the title
\renewcommand{\maketitle}{%
  \begin{center} %
    {\Huge\bfseries\@title\par}
    {\Large\itshape\@researchtype\par}
  \end{center}
}

% TODO: Fix header
%       * Font size: 9. Italic, left aligned
%       * First page: no header
%       * Even page: Track title
%       * Odd page: Short title (8 words)
% TODO: Fix footer
%       * Font size: 9., Alternate alignment by page
%       * Thirty Fifth International Conference on Information Systems, Auckland
%       2014 [page num]
%       * Thirt... italic
%       * Page num: bold

% TODO: Figure out citation style. Of course, MISQ doesn't use APA. 

\renewcommand{\section}{%
  \@startsection
    {section}{1}{0pt}{4pt}%
    {4pt}{\bfseries\LARGE}%
}

\renewcommand{\subsection}{%
  \@startsection
    {subsection}{2}{0pt}{4pt}%
    {4pt}{\bfseries\large\itshape}%
}

\renewcommand{\subsubsection}{%
  \@startsection
    {subsubsection}{3}{0pt}{4pt}%
    {4pt}{\bfseries}%
}
\setcounter{secnumdepth}{0}