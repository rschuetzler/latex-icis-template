\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{icisfinal}[2015/03/21 ICIS Conference final submission style]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[10pt,letterpaper]{article}

% Must have the following two lines at the top of your document
% %!TEX TS-program = xelatex
% %!TEX encoding = UTF-8 Unicode
% Or you must manually choose to compile with XeLaTeX

% These 3 are required to use the Georgia font family
\RequirePackage{xltxtra}
\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{graphicx}
\RequirePackage[labelsep=period,font=bf]{caption}
\RequirePackage[margin=1in, bottom=2.54cm, total={6.5in, 9in}]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{stackengine}

% Get rid of spacing inside lists
\RequirePackage{enumitem}
\setlist{noitemsep}

\RequirePackage{xpatch}

\RequirePackage[
    	backend=biber,       % Use biber as the backend
    	style=apa,           % Set the bibliography style to APA
	sortcites=true,      % Sort citations when multiple are given
	maxcitenames=1,      % Show first author name only, with et al when more than one authors 
	maxbibnames=20,      % Same for bibliography: show up to 20 author names
	uniquelist=false,    % Do not add distinguishing letters to repeated author lists
	date=year,           % Show only the year in citations and bibliographies
	doi=true,            % Include DOI in the bibliography entries
	isbn=false,          % Do not display ISBN numbers
	url=true,            % Show URLs for web sources
	eprint=false,        % Do not show eprint fields
]{biblatex}

\AtEveryBibitem{\clearfield{note}}
\AtEveryBibitem{\clearfield{annotation}}

\setlength{\bibhang}{0.63cm}

\RequirePackage[hang,flushmargin,bottom]{footmisc} 
\renewcommand{\footnoterule}{%
	\kern -3pt
	\hrule width 140pt height 0.6pt
	\kern 9pt
}

\renewbibmacro*{volume+number+eid}{%
	\setunit{\addspace}%
	\printtext[parens]{%
		\printfield{volume}%
		\setunit*{\addcolon}%
		\printfield{number}}%
	\setunit{\addcomma\space}%
	\printfield{eid}}

\xpatchbibmacro{date+extradate}{%
	\printtext[parens]%
}{%
	\setunit*{\space}%
	\printtext%
}{}{} 

\renewbibmacro{in:}{%
	\ifentrytype{article}{}{\printtext{\bibstring{in}\intitlepunct}}}

\DeclareNameAlias{sortname}{last-first}


% \defaultfontfeatures{Scale=MatchLowercase}
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

\urlstyle{rm}

% These are variables set in the frontmatter of the document
% Not exactly sure if I need this step, but it was in the example I found.
\let\@conference\@empty
\let\@researchtype\@empty
\let\@shorttitle\@empty

\newcommand{\conference}[1]{\gdef\@conference{#1}}
\newcommand{\researchtype}[1]{\gdef\@researchtype{#1}}
\newcommand{\shorttitle}[1]{\gdef\@shorttitle{#1}}

\renewcommand{\maketitle}{%
	\begin{center} %
		{\Huge\bfseries\@title\par}
		{\Large\itshape\@researchtype\par}
		\begin{tabular}[t]{c}%
			\@author
		\end{tabular}\par%
	\end{center}
	\thispagestyle{plain}\@thanks
}

\renewenvironment{abstract}{%
	\begin{center}%
		{\LARGE\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
	\end{center}
	\list{}{%
		\setlength{\leftmargin}{0.5in}%
		\setlength{\rightmargin}{0.5in}%
	}%
	\item\relax\itshape}
{\endlist}


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

\newcommand{\changefont}{%
	\fontsize{9}{11}\selectfont
}

% Header and footer info
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\changefont\textit{\@shorttitle}}
\fancyfoot[R]{\changefont\textit{\@conference}\\\textbf{\thepage}}

% No header on the first page. Only a footer
\fancypagestyle{plain}{
	\fancyhf{}
	\fancyhead[R]{\changefont\textit{\@shorttitle}}
	\fancyfoot[R]{\changefont\textit{\@conference}\\\textbf{\thepage}}
}

% Get rid of the horizontal rules
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Bibliography stuff
\renewcommand{\bibnamedelimi}{. }
% \renewcommand{\bibnamedelima}{.}
% \renewcommand{\bibnamedelimb}{.}

