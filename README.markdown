# Description
This is a LaTeX template meeting the submission requirements
for the 2015 International Conference on Information Systems.

## Notes

There are two template files included here. The first (`icis.cls`) is a fully compliant
template for submitting anonymous drafts for review. The second (`icisfinal.cls`) is final
submission template, for which the author information and abstract are designed to be
included in the file. Follow the example of `testdoc.tex` for how to include abstract,
author, and keywords in the final submission. For the initial submission (for review),
remove the author table and abstract block.

## Requirements
* Document MUST be compiled with XeLaTeX in order to support the Georgia font
family
* You must have the Georgia font installed on the compiling computer
* You must have the Biber software installed (automatically done for MiKTeX)

## Use
Set `\documentclass{icis}` and put `icis.cls` and `biblatex.cfg` in the directory with
your main LaTeX document. In order to fill the template, you need to set a few
options in your TeX file. These are demonstrated in `testdoc.tex`.

```latex
\researchtype{}   % Indicate whether this is Completed Research or Research in Progress
\shorttitle{}     % Give this document a short title (8 words or fewer)
\track{}          % Indicate which track this will go to.
```
In your preamble, use the following command to add your bibliography:

```latex
\addbibresource{references.bib}
```

and use `\printbibliography` at the end of your document to print the bibliography

## Ubuntu Specific Recommendations 

To use the Georgia font, you need to install the MS core fonts:

    sudo apt-get install msttcorefonts

For some reason, XeLaTeX complains about a line in the cls file: 
    
    ! Package xkeyval Error: `TeX' undefined in families `Ligatures'.

I replaced:
    
    \setmainfont[Ligatures={Common,TeX}]{Georgia}

with 

    \setmainfont{Georgia}

and it compiled without problems. 

=======
Since I no longer use Natbib, you should now use biblatex commands for
citations: `\parencite{}` for parentheticals, `\textcite{}` for text citations
(e.g., "Byron et al. (1999) found..."). For the best level of adaptability to
future citation requirements, use `\autocite{}` instead of `\parencite{}`. Use
`\citeauthor` and `\citeyear` to cite only the author or year.
