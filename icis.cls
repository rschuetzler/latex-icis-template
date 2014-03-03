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

\defaultfontfeatures{Scale=MatchLowercase}
\setmainfont{Georgia}
% \setromanfont[Numbers=Uppercase]{Georgia}

\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\renewcommand{\LARGE}{\fontsize{20pt}{24pt}\selectfont}
\renewcommand{\Large}{\fontsize{13pt}{15pt}\selectfont}
\renewcommand{\large}{\fontsize{11pt}{13pt}\selectfont}
\setlength{\textwidth}{7in}
\setlength{\textheight}{9.25in}
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}


% TODO: Fix the title
% \renewcommand{\maketitle}{%
%   \

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

\renewcommand{\section}{%
  \@startsection
    {section}{1}{0pt}{10pt}%
    {10pt}{\bfseries\Large}%
}

\renewcommand{\subsection}{%
  \@startsection
    {subsection}{2}{0pt}{10pt}%
    {10pt}{\bfseries\large\itshape}%
}

\renewcommand{\subsubsection}{%
  \@startsection
    {subsubsection}{3}{0pt}{10pt}%
    {10pt}{\bfseries}%
}
\setcounter{secnumdepth}{0}