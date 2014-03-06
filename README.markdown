# Description
This is a work-in-progress LaTeX template meeting the submission requirements
for the International Conference on Information Systems.

## Requirements
* Document must be compiled with XeLaTeX in order to support the Georgia font
family
* You must have the Georgia font installed

## Use
Set `\documentclass{icis}` and put this file the directory with
your main LaTeX document. In order to fill the template, you need to set a few
options in your TeX file. These are demonstrated in `testdoc.tex`.

```latex
\researchtype{}   % Indicate whether this is Completed Research or Research in Progress
\shorttitle{}     % Give this document a short title (8 words or fewer)
\track{}          % Indicate which track this will go to.
```

### Incomplete tasks
* Get BibLaTeX to comply with the MISQ citation style
