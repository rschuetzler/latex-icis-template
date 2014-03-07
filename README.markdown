# Description
This is a LaTeX template meeting the submission requirements
for the 2014 International Conference on Information Systems.

## Requirements
* Document MUST be compiled with XeLaTeX in order to support the Georgia font
family
* You must have the Georgia font installed on the compiling computer

## Use
Set `\documentclass{icis}` and put `icis.cls` and `misq.bst` in the directory with
your main LaTeX document. In order to fill the template, you need to set a few
options in your TeX file. These are demonstrated in `testdoc.tex`.

```latex
\researchtype{}   % Indicate whether this is Completed Research or Research in Progress
\shorttitle{}     % Give this document a short title (8 words or fewer)
\track{}          % Indicate which track this will go to.
```
At the end of your document, put the following to place your references section
and use the `misq.bst` file.

```latex
\bibliographystyle{misq}
\bibliography{references}
```

## Recommendations

In addition to the usage requirements above, I have a few recommendations to
make using this as simple as possible.

1. Use Natbib for in-text citations. It lets you do nice things with citations
   in an easily understandable way. While I believe the `misq.bst` file will
   work for biblatex, I've only tested with Natbib.
2. If you use Natbib, put this in your document head to conform with MISQ style,
   as in the example LaTeX document:

```latex
\usepackage[authoryear,sort]{natbib}

\setcitestyle{aysep={}}
```
