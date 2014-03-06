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
\RequirePackage[margin=1in]{geometry}
% \RequirePackage[total={7in,9.25in},top=0.75in,paper=letterpaper]{geometry}
\RequirePackage{fancyhdr}

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
% \setlength{\textwidth}{7in}
% \setlength{\textheight}{9.25in}
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}


% These are variables set in the frontmatter of the document
% Not exactly sure if I need this step, but it was in the example I found.
\let\@researchtype\@empty
\let\@shorttitle\@empty
\let\@track\@empty

\newcommand{\researchtype}[1]{\gdef\@researchtype{#1}}
\newcommand{\shorttitle}[1]{\gdef\@shorttitle{#1}}
\newcommand{\track}[1]{\gdef\@track{#1}}

\renewcommand{\maketitle}{%
  \begin{center} %
    {\Huge\bfseries\@title\par}
    {\Large\itshape\@researchtype\par}
  \end{center}
  \thispagestyle{plain}\@thanks
}

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

% Header and footer info
\pagestyle{fancy}
\fancyhf{}
\fancyhead[RO]{\textit{\@shorttitle}}
\fancyhead[LE]{\textit{\@track}}
\fancyfoot[RO]{\textit{Thirty Fifth International Conference on Information Systems, %
              Auckland 2014}\hspace{5mm}\textbf{\thepage}}
\fancyfoot[LE]{\textbf{\thepage}\hspace{5mm}\textit{Thirty Fifth International Conference on Information Systems, %
              Auckland 2014}}

% No header on the first page. Only a footer
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[R]{\textit{Thirty Fifth International Conference on Information Systems, %
              Auckland 2014}\hspace{5mm}\textbf{\thepage}}
  }

% Get rid of the horizontal rules
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Getting references to work will go here
% TODO: Get MISQ reference format

% in text cites: (Jones et al. 1995; Smith 1996)
% Sorted alphabetically
% One author: (Smith 1996)
% Two authors: (Zghaibeh and Anagnostakis 2007)
% Three or more: (Golle et al. 2001)

% Bibliography: no et al. EVER!
% Journal:
% Zack, M. H., and McKenney, J. L. 1995. "Social Context and Interaction in
% Ongoing Computer-Supported Management Groups," \textit{Organization Science}
% (6:4), pp. 394-422.

% Book:
% Strauss, A., and Corbin, J. 1998. \textit{Basics of Qualitative Research:
% Techniques and Procedures for Developing Grounded Theory (2\super{nd} ed.), Thousand
% Oaks, CA: Sage Publications.

% Conference:
% Zhang, X., Vogel, D., Chen, Z., and Yuan, M. 2006. "Is Reward Always Effective
% as Incentive in Electronic Knowledge Repositories? A Game-Theoretical
% Perspective," in \textit{Proceedings of the 12\super{th} Americas Conference
% on Information Systems, August 4-6, Acapulco, Mexico.