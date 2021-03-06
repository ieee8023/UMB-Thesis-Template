% UMB THESIS/DISSERTATION CLASS -- for LaTeX version 2e
%	(C) Copyright 2011 by Stephen Revilak.
%	Revised for 9/2010 UMass Boston Dissertation format 
%	requirements, plus general code maintenance.
%       With TOC improvements by David Weisman.
%
% UMB THESIS/DISSERTATION CLASS -- for LaTeX version 2e
%	(C) Copyright 2002 by Laurentiu Cristofor.
%
% Taken from UCLA THESIS/DISSERTATION CLASS -- for LaTeX version 2e
%	(C) Copyright 1995 by John Heidemann.
%
% Taken from UCLA THESIS/DISSERTATION CLASS (version 0.94 BETA, 5/23/91)
%	(C) Copyright 1988 Richard B. Wales.  All Rights Reserved.
%	by Richard B. Wales.
%
% Taken from DISSERTATION style (1/10/86)
%	by Dorab Patel and Eduardo Krell
%
% Taken from REPORT style
%	[Copyright (C) 1985 by Leslie Lamport]
%
%
% User-visible options and commands special in this style:
%
%     Optional arguments to "\documentstyle" command:
%
%         MA, MS, PhD, EdD
%             Type of degree being awarded.  Default is "PhD".  If "EdD"
%             is specified, a "\nodepartment" command is assumed (but
%             can be overridden with a "\department{...}" command).
%
%         single, double
%             Line spacing.  Default is "double".
%             NOTE:  Single spacing is NON-CONFORMING to the RFTADP.
%
%	  twoside
%             Two-sided printing (for a duplex printer).
%             NOTE:  two-sided printing is NON-CONFORMING to the RFTADP.
%
%	  nohyphenatetitles, hyphenatetitles
%	      Don't hyphenate section (and subsection...) titles.
%             Default is hyphenatetitles.
%
%     Commands (to specify preliminary page info):
%
%         \title{X}
%             Set the document title to "X".  Must always be specified.
%
%         \author{X}
%             Set the author to "X".  Must always be specified.
%
%         \authortitles{X}
%             Set the author titles to "X".  Must always be specified.
%
%         \department{X}
%             Set the department name (in the degree title) to "X".
%             Must always be specified, unless a "\nodepartment" command
%             is given, or unless the "EdD" argument is supplied in the
%             "\documentstyle" command.
%
%         \thesis{X}
%             Set the document type to "thesis", and the degree name to
%             "X".  This command is normally not needed, since an "MA"
%             or "MS" option to "\documentstyle" will do the same thing
%             in all standard situations.
%
%         \dissertation{X}
%             Set the document type to "dissertation", and the degree
%             name to "X".  This command is normally not needed, since
%             a "PhD" or "EdD" option to "\documentstyle" will do the
%             same thing in all standard situations.
%
%         \nodepartment
%             Omit the department name from the degree title.  This
%             command should be used only in situations where the
%             department name is officially unnecessary (such as when an
%             "EdD" or customized degree title is specified).
%
%         \degreemonth{X}
%             Set the month in which the degree will be awarded to "X".
%             Default is the current month.
%
%         \degreeyear{X}
%             Set the year in which the degree will be awarded to "X".
%             Default is the current year.
%
%         \copyrightyear{X}
%             Set the year which appears in the copyright notice to "X".
%             Default is the degree year (see above).  If the copyright
%             and degree years are different, both will be included in
%             the copyright notice (with the copyright year first).
%
%         \nocopyright
%             Don't include a copyright notice at all.  A completely
%             blank "copyright" page will be produced instead.
%
%         \titlesize{X}
%             Print the document title (on the "title" and "abstract"
%             pages) in "X" size type.  Default is "Large" (17-point).
%             Although any LaTeX type size name will be accepted, the
%             only non-default value likely to give satisfactory results
%             is "LARGE" (20-point).
%
%         \chair{X, Y}
%             The committee chair's name is "X", academic title is "Y".
%             There may be up to three chairs (co-chairs); co-chairs
%             are printed in the given order on the "signature" page
%             (before the other members specified in "\member" commands;
%             see below).
%
%         \member{X, Y}
%             The name of one committee member (other than the chair or
%             a co-chair) is "X", and academic title is "Y". There may 
%             be up to six of these; they are printed in order on the
%             "signature" page, after the chair(s).
%
%         \director{X}
%             The name of the Program Director. This is printed in the
%             right side of the page, after the chair and members of the
%             committee.
%
%         \deptchair{X}
%             The name of the Department Chair. This is printed in the
%             right side of the page, after the chair, members of the
%             committee, and Program Director
%
%         \acknowledgments{X}
%             The text "X" is used for the "ACKNOWLEDGMENTS" page.
%             Default is not to have an "ACKNOWLEDGMENTS" page.
%
%         \abstract{X}
%             The text "X" is used as the abstract.
%
%         \makeintropages
%             Generate the introductory pages in the proper sequence.
%
%         \listofabbreviations{X}
%             \include{X} before the first chapter.  X is the body 
%             of the list of abbreviations.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Notes on the LaTeX2e port:
%
%  I have done a quick port of Rich Wales' "thesis" LaTeX 2.09
%  document style to LaTeX2e.  The major changes were in option
%  handling and font selection.  Additionally, I renamed the files
%  to fit within MS-DOS 8.3 constraints (even though I neither use
%  nor advocate MS-DOS).
%      -johnh
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%
% Version checking.
%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\newcommand\umbthesversion{1.0}
\newcommand\umbthesdate{04/24/2002}
\ProvidesClass{umbthes}[\umbthesdate, \umbthesversion]
\typeout{UMB dissertation style copyright (C) 2010 by Stephen Revilak.}
\typeout{UMB dissertation style copyright (C) 2002 by Laurentiu Cristofor.}
\typeout{LaTeX2e port copyright (C) 1995 by John Heidemann.}
\typeout{UCLA dissertation style copyright (C) 1988 by Richard B. Wales}
\typeout{Report style copyright (C) 1985 by Leslie Lamport.}

%
% First load critical packages (needed for option processing).
%
\RequirePackage{ifthen}

% srevilak - umb requires dissertations to by typeset in Times
\RequirePackage{mathptmx}

% Get the title page macros.
\input{umbthma.clo}

\DeclareOption{PhD}{}			% default -- nothing more to do
\DeclareOption{MA}{\thesis{Master of Arts}}
\DeclareOption{MS}{\thesis{Master of Science}}
\DeclareOption{EdD}{\dissertation{Doctor of Education}\@departmentfalse}

%
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}

% The following commands will process the "single" or "double" option.
% (The default is "double".)  This controls inter-line spacing.  Note
% that the \@doublespacing value is computed by dividing the inter-line
% spacing for 3 lines/inch (1/3 inch, or 24.09 points) by the spacing
% specified for "normalsize" type (15.6 points).

\newcommand\@singlespacing{1.0}
\newcommand\@doublespacing{1.544}	  % see above for explanation of value

\newcommand{\singlespacing}{%
  \renewcommand{\baselinestretch}{\@singlespacing}%
	\normalsize\normalfont%
}

\newcommand{\doublespacing}{%
  \renewcommand{\baselinestretch}{\@doublespacing}%
	\normalsize\normalfont%
}

\newcommand{\normalspacing}{%
  \renewcommand{\baselinestretch}{\@spacing}%
	\normalsize\normalfont%
}

\let\@spacing=\@doublespacing
% \DeclareOption{single}{\typeout{*** Sorry, single spacing disabled ***}}
\DeclareOption{single}{\let\@spacing=\@singlespacing\singlespacing}
\DeclareOption{double}{\let\@spacing=\@doublespacing\doublespacing}
\DeclareOption{draft}{\overfullrule 5pt}  % Causes overfull hboxes to be marked.

%
% Optional title hyphenation added 14-Jun-95 by johnh.
%
\newboolean{hyphenatetitles}
\setboolean{hyphenatetitles}{true}
\DeclareOption{nohyphenatetitles}{\setboolean{hyphenatetitles}{false}}
\DeclareOption{hyphenatetitles}{\setboolean{hyphenatetitles}{true}}

% The "umbth12.clo" file defines things that depend on the type size.
% In order to meet the UMB requirements for minimum size of print in a
% thesis or dissertation, only one size (12-point) is supported.
%
% This file also contains the definition of \normalsize.  \normalsize
% must defined before calling \ExecuteOptions.
\input{umbth10.clo}\relax

% Default: PhD dissertation, double spaced.
\ExecuteOptions{PhD,double,letterpaper}

% The \ProcessOptions command does the options.
\ProcessOptions



%    ****************************************
%    *                LISTS                 *
%    ****************************************
%

% ENUMERATE
%  Enumeration is done with four counters: enumi, enumii, enumiii
%  and enumiv, where enumN controls the numbering of the Nth level
%  enumeration.  The label is generated by the commands \labelenumi 
%  ... \labelenumiv.  The expansion of \p@enumN\theenumN defines the 
%  output of a \ref command.  

\newcommand\labelenumi{\arabic{enumi}.}    
\renewcommand\theenumi{\arabic{enumi}}     
 
\newcommand\labelenumii{(\alph{enumii})}
\renewcommand\theenumii{\alph{enumii}}
\renewcommand\p@enumii{\theenumi}

\newcommand\labelenumiii{\roman{enumiii}.}
\renewcommand\theenumiii{\roman{enumiii}}
\renewcommand\p@enumiii{\theenumi(\theenumii)}

\newcommand\labelenumiv{\Alph{enumiv}.}
\renewcommand\theenumiv{\Alph{enumiv}}     
\renewcommand\p@enumiv{\p@enumiii\theenumiii}

% ITEMIZE
% Itemization is controlled by four commands: \labelitemi, \labelitemii,
% \labelitemiii, and \labelitemiv, which define the labels of the various 
% itemization levels.

\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}

% VERSE
%   The verse environment is defined by making clever use of the
%   list environment's parameters.  The user types \\ to end a line.
%   This is implemented by \let'in \\ equal \@centercr.
%
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}

% QUOTATION
%   Fills lines
%   Indents paragraph
%   
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}

% QUOTE -- same as quotation except no paragraph indentation,
%
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}

% DESCRIPTION 
%
%  To change the formatting of the label, you must redefine 
%  \descriptionlabel.  

\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}


%    ****************************************
%    *         LIST OF ABBREViATIONS        *
%    ****************************************
%
\newif\if@listofabbreviations
\@listofabbreviationsfalse
\newcommand{\listofabbreviations@file}{\empty}
\newcommand{\listofabbreviations}[1]{
  \renewcommand{\listofabbreviations@file}{#1}%
  \@listofabbreviationstrue
}
\newcommand{\listofabbreviationsname}{LIST OF ABBREVIATIONS}

\newenvironment{abbreviations}
               {\list{}{\settowidth{\labelwidth}{XXXXXXX}
                        \setlength{\leftmargin}{\labelwidth}
                        \addtolength{\leftmargin}{2ex}
                        \setlength{\labelsep}{\leftmargin}
                        \addtolength{\labelsep}{-\labelwidth}
                        \let\makelabel\abbrevlabel}}
               {\endlist}
\newcommand*\abbrevlabel[1]{\hspace\labelsep\normalfont #1\hfil}


%    ****************************************
%    *         OTHER ENVIRONMENTS           *
%    ****************************************
%
%

% TITLEPAGE
%  In the normal environments, the titlepage environment does nothing but 
%  start and end a page, and inhibit page numbers.  It also resets the
%  page number to zero.  In two-column style, it still makes a one-column
%  page.
\def\titlepage{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
     \else \newpage \fi \thispagestyle{empty}\c@page\z@}

\def\endtitlepage{\if@restonecol\twocolumn \else \newpage \fi}

% ARRAY AND TABULAR
%

\arraycolsep 5pt     % Half the space between columns in an array environment.
\tabcolsep 6pt       % Half the space between columns in a tabular environment.
\arrayrulewidth .4pt % Width of rules in array and tabular environment.
\doublerulesep 2pt   % Space between adjacent rules in array or tabular env.

% TABBING
%
\tabbingsep \labelsep   % Space used by the \' command.  (See LaTeX manual.)

% MINIPAGE
%  \@minipagerestore is called upon entry to a minipage environment to
%  set up things that are to be handled differently inside a minipage
%  environment. In the current styles, it does nothing.
%
% \skip\@mpfootins : plays same role for footnotes in a minipage as
%                    \skip\footins does for ordinary footnotes

\skip\@mpfootins = \skip\footins

% FRAMEBOX
%
\fboxsep = 3pt    % Space left between box and text by \fbox and \framebox.
\fboxrule = .4pt  % Width of rules in box made by \fbox and \framebox.


%    ****************************************
%    *        CHAPTERS AND SECTIONS         *
%    ****************************************
%
% DEFINE COUNTERS:
%
% \newcounter{NEWCTR}[OLDCTR] : Defines NEWCTR to be a counter, which is 
%                               reset to zero when counter OLDCTR is stepped.  
%                               Counter OLDCTR must already be defined.

\newcounter{part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]

% For any counter CTR, \theCTR is a macro that defines the printed version
% of counter CTR.  It is defined in terms of the following macros:
%
%  \arabic{COUNTER} : The value of COUNTER printed as an arabic numeral.
%  \roman{COUNTER}  : Its value printed as a lower-case roman numberal.
%  \Roman{COUNTER}  : Its value printed as an upper-case roman numberal.
%  \alph{COUNTER}   : Value of COUNTER printed as a lower-case letter:
%                         1 = a, 2 = b, etc.
%  \Alph{COUNTER}   : Value of COUNTER printed as an upper-case letter:
%                           1 = A, 2 = B, etc.
%

\renewcommand{\thepart}{\Roman{part}}
\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand{\thesection}{\thechapter.\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\theparagraph}{\thesubsubsection.\arabic{paragraph}}
\renewcommand{\thesubparagraph}{\theparagraph.\arabic{subparagraph}}
                     
% \@chapapp is initially defined to be 'CHAPTER'.  The \appendix
% command redefines it to be 'APPENDIX'.
\def\@chapapp{CHAPTER}


%    ****************************************
%    *         TABLE OF CONTENTS, ETC.      *
%    ****************************************
%
% A \subsection command writes a 
%       \contentsline{subsection}{TITLE}{PAGE}
% command on the .toc file, where TITLE contains the contents of the
% entry and PAGE is the page number.  If subsections are being numbered,
% then TITLE will be of the form
%       \numberline{NUM}{HEADING}
% where NUM is the number produced by \thesubsection.  Other sectioning
% commands work similarly.  
%
% A \caption command in a 'figure' environment writes
%    \contentsline{figure}{\numberline{NUM}{CAPTION}}{PAGE}
% on the .lof file, where NUM is the number produced by \thefigure and
% CAPTION is the figure caption.  It works similarly for a 'table' environment.
%
% The command \contentsline{NAME} expands to \l@NAME.  So, to specify
% the table of contents, we must define \l@chapter, \l@section, 
% \l@subsection, ... ; to specify the list of figures, we must define
% \l@figure; and so on.  Most of these can be defined with the
% \@dottedtocline command, which works as follows.
%
% \@dottedtocline{LEVEL}{INDENT}{NUMWIDTH}{TITLE}{PAGE}
%    LEVEL    : An entry is produced only if LEVEL < or = value of 
%               'tocdepth' counter.  Note, \chapter is level 0, \section
%               is level 1, etc.
%    INDENT   : The indentation from the outer left margin of the start of 
%               the contents line.
%    NUMWIDTH : The width of a box in which the section number is to go,
%               if TITLE includes a \numberline command.
%   
% This command uses the following three parameters, which are set
% with a \def (so em's can be used to make them depend upon the font).
%   \@pnumwidth : The width of a box in which the page number is put.
%   \@tocrmarg  : The right margin for multiple line entries.  One
%                 wants \@tocrmarg > or = \@pnumwidth
%   \@dotsep    : Separation between dots, in mu units.  Should be \def'd to
%                 a number like 2 or 1.7

\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg {2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
\newcommand{\tocwidth}{5.5in}

% Conditional for turning on lists of figures.
% Used in \tableofcontents below.
\newif\if@figures
\@figurestrue

% Conditional for turning on lists of tables.
% Used in \tableofcontents below.
\newif\if@tables
\@tablestrue

\newcommand*{\l@part}[2]{\addpenalty{-\@highpenalty}
   \addvspace{2.25em plus 1pt}  % space above part line
   \begingroup
   \@tempdima 3em         % width of box holding part number, used by 
     \parindent \z@ \rightskip \@pnumwidth             %% \numberline
     \parfillskip -\@pnumwidth   
     {\large \bfseries          % set line in \large boldface
     \leavevmode          % TeX command to enter horizontal mode.       
     #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
     \nobreak             % Never break after part entry
   \endgroup}

% 2011.07.25 DW: define generic length for big vertical skip in toc/lof/lot/etc
\newcommand{\tocBigSkipLen}{2.7ex plus 0.5ex minus 0.2ex}

\newcommand*{\l@chapter}{\vspace{\tocBigSkipLen}% 2011.07.25 DW: change from bigskip to vspace w/param'ed size
                         \@dottedtocline{1}{0.5in}{1.75em}}
\newcommand*{\l@section}{\@dottedtocline{2}{1in}{0em}}
\newcommand*{\l@subsection}{\@dottedtocline{3}{1.5in}{0em}}
\newcommand*{\l@subsubsection}{\@dottedtocline{4}{2in}{0em}}
\newcommand*{\l@paragraph}{\relax}
\newcommand*{\l@subparagraph}{\relax}
\newcommand*{\l@other}[2]{\bigskip\@dottedtocline{1}{0in}{0in}{#1}{#2}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TABLEOFCONTENTS

% \tocbreak{x}{y}.  Forces a page break in one of the 
% contents pages, and adds the running header.
%
% The first argument is the type of contents page (toc, lof, lot).
%
% The second argument is the text to appear in the left of the
% running header.
\newcommand{\tocbreak}[2]{
  \addtocontents{#1}{\protect\clearpage\noindent #2 \hfill Page\par}
}

\newcommand{\contentsname}{Table of Contents}
\newcommand{\tableofcontents}{%
    \toc@limit@numberingtrue%
    \chapter*{\MakeUppercase\contentsname}%
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \singlespacing%
    \begingroup
    %\baselineskip=12pt% 2011.07.25 DW: commented out; crunches multi-line \section entries in TOC
    \hsize=\tocwidth
    \if@acks
       \l@other{\acknowledgmentsname}{\pageref{ref:\acknowledgmentsname}}
    \fi
    \if@tables
       \l@other{\listoftablesname}{\pageref{ref:\listoftablesname}}
    \fi
    \if@figures 
       \l@other{\listoffiguresname}{\pageref{ref:\listoffiguresname}}
    \fi
    \if@listofabbreviations
       \l@other{\listofabbreviationsname}{\pageref{ref:\listofabbreviationsname}}
    \fi
    \bigskip
    \noindent CHAPTER \hfill Page%
    \@starttoc{toc}%
    \vspace{0.6ex}%
    \l@other{\bibname}{\pageref{ref:\bibname}}%
    \endgroup
    \doublespacing
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% A slighly convoluted way of adhering to UMB TOC Style.

% Chapter numbers should appear with Chapter TOC entries, but (sub)
% section numbers should not appear with (sub) section entries.

% To accomplish this, we ``advise'' \numberline, so that it counts the
% dot-separated token in toc numbering, and only displays numbers when
% there is one token.

% Counting dots requires recursion, and delimited macros.
%
\newcounter{dot@token@counter}
\newif\iftoc@limit@numbering

\toc@limit@numberingfalse
\def\@countdottokens#1{%
   \@countdottokenssub#1.x%
}

\def\@countdottokenssub#1.#2x{%
  %\typeout{A=#1, B=#2}%
  \def\@tmpfirst{#1}%
  \def\@blank{}%
  \ifx\@tmpfirst\@blank%
	\else%
        \addtocounter{dot@token@counter}{1}%
	\@countdottokens{#2}%
   \fi%
}

\def\countdottokens#1{%
  \setcounter{dot@token@counter}{-1}%
  \@countdottokens{#1}%
}

\let\oldnumberline=\numberline
\def\numberline#1{%
  \countdottokens{#1}%
  \iftoc@limit@numbering%
     \ifnum \thedot@token@counter = 0%
             \oldnumberline{#1.}%
     \fi%
  \else \oldnumberline{#1.}%
  \fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Generate a list of figures or tables, etc
%
% #1 is the page heading.  This macro also creates a reference
% \label{ref:#1}
%
% #2 is the heading of the left column (``Table'' or ``Figure'')
%
% #3 is the file extension (lof for list of figures, lot for list of tables)
%
\newcommand{\@listofFiguresOrTables}[3]{
  \chapter*{#1}%
  \markboth{#1}{#1}%
  \label{ref:#1}%
  \toc@limit@numberingfalse%
  \begingroup
  \hsize=\tocwidth
  \noindent #2 \hfill Page\par
    % 2011.07.25 DW: doublespace between entries, but long entries that linewrap are singlespaced within
    {\singlespacing%
     \setlength{\parskip}\tocBigSkipLen%  
     \@starttoc{#3}%
    }
  \endgroup
}


% LIST OF FIGURES
%
\newcommand{\nolistoffigures}{\@figuresfalse}
\newcommand{\listoffiguresname}{LIST OF FIGURES}
\newcommand{\listoffigures}{%
  \if@figures%
    \@listofFiguresOrTables{\listoffiguresname}{Figure}{lof}
  \fi%
}

\def\l@figure{\@dottedtocline{1}{0.35in}{0.35in}}

% LIST OF TABLES
%
\newcommand{\nolistoftables}{\@tablesfalse}
\newcommand{\listoftablesname}{LIST OF TABLES}
\newcommand{\listoftables}{%
  \if@tables%
     \@listofFiguresOrTables{\listoftablesname}{Table}{lot}
  \fi%
}

\let\l@table\l@figure



%    ****************************************
%    *             BIBLIOGRAPHY             *
%    ****************************************
%
% The thebibliography environment executes the following commands:
%
%  \def\newblock{\hskip .11em plus .33em minus -.07em} --
%      Defines the `closed' format, where the blocks (major units of 
%      information) of an entry run together.
%
%  \sloppy  -- Used because it's rather hard to do line breaks in 
%      bibliographies,
% 
%  \sfcode`\.=\@m --
%      Causes a `.' (period) not to produce an end-of-sentence space.
%
% The label allows us to reference the page number in the TOC
\def\bibname{REFERENCE LIST}
\newdimen\bibindent
\setlength\bibindent{1.5em}
\let\@openbib@code\@empty
\let\@old@interlinepenalty\interlinepenalty
\newenvironment{thebibliography}[1]
     {\chapter*{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \label{ref:\bibname}%
      \singlespacing
      \interlinepenalty=5000%  prevent page breaks between bib items
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
      \endlist%
      \interlinepenalty=\@old@interlinepenalty
      \normalspacing}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}


% \def\@biblabel#1{[#1]\hfill}  % Produces the label for a \bibitem[...]
                                % command. 
% \def\@cite#1{[#1]}            % Produces the output of the \cite command.


%    ****************************************
%    *              THE INDEX               *
%    ****************************************
%
% THE THEINDEX ENVIRONMENT
% Produces double column format, with each paragraph a separate entry.
% The user commands \item, \subitem and \subsubitem are used to
% produce the entries, and \indexspace adds an extra vertical space
% that's the right size to put above the first entry with a new letter
% of the alphabet.

\newif\if@restonecol

\def\theindex{\@restonecoltrue\if@twocolumn\@restonecolfalse\fi
\columnseprule \z@
\columnsep 35pt\twocolumn[\@makeschapterhead{Index}]
    \markboth{INDEX}{INDEX}\thispagestyle{plain}\parindent\z@
    \parskip\z@ plus .3pt\relax\let\item\@idxitem}

\def\@idxitem{\par\hangindent 40pt}

\def\subitem{\par\hangindent 40pt \hspace*{20pt}}

\def\subsubitem{\par\hangindent 40pt \hspace*{30pt}}

\def\endtheindex{\if@restonecol\onecolumn\else\clearpage\fi}

\def\indexspace{\par \vskip 10pt plus 5pt minus 3pt\relax}


%    ****************************************
%    *             FOOTNOTES                *
%    ****************************************
%
% \footnoterule is a macro to draw the rule separating the footnotes from
% the text.  It should take zero vertical space, so it needs a negative
% skip to compensate for any positive space taken by the rule.  (See
% PLAIN.TEX.)

\def\footnoterule{\kern-3\p@   
  \hrule width .4\columnwidth 
  \kern 2.6\p@}                 % The \hrule has default height of .4pt .

% \newcounter{footnote}
\@addtoreset{footnote}{chapter}  % Numbers footnotes within chapters

%   \@makefntext{NOTE} :
%        Must produce the actual footnote, using \@thefnmark as the mark 
%        of the footnote and NOTE as the text.  It is called when effectively
%        inside a \parbox of width \columnwidth (i.e., with \hsize = 
%        \columnwidth).  
%
%        The following macro indents all lines of the footnote by 10pt, and 
%        indents the first line of a new paragraph by 1em.  To change these 
%        dimensions, just substitute the desired value for '10pt' [in both 
%        places] or '1em'.  The mark is flushright against the footnote. 
%          \long\def\@makefntext#1{\@setpar{\@@par\@tempdima \hsize 
%             \advance\@tempdima-10pt\parshape \@ne 10pt \@tempdima}\par
%             \parindent 1em\noindent \hbox to \z@{\hss$^{\@thefnmark}$}#1}
%
%        A simpler macro is used, in which the footnote text is
%        set like an ordinary text paragraph, with no indentation except
%        on the first line of a paragraph, and the first line of the 
%        footnote.  Thus, all the macro must do is set \parindent
%        to the appropriate value for succeeding paragraphs and put the 
%        proper indentation before mark.

\long\def\@makefntext#1{\parindent 1em\noindent 
            \hbox to 1.8em{\hss$^{\@thefnmark}$}#1}

% \@makefnmark : A macro to generate the footnote marker that goes
%    in the text.  Default used.
%


%    ****************************************
%    *         FIGURES AND TABLES           *
%    ****************************************
% 
% Float placement parameters.  See LaTeX manual for their definition.
%
\setcounter{topnumber}{2}
\def\topfraction{.7}
\setcounter{bottomnumber}{1}
\def\bottomfraction{.3}
\setcounter{totalnumber}{3}
\def\textfraction{.2}
\def\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}

% \@makecaption{NUMBER}{TEXT} : Macro to make a figure or table caption.  
%      NUMBER : Figure or table number--e.g., 'Figure 3.2' 
%      TEXT   : The caption text.
%  Macro should be called inside a \parbox of right width, with \normalsize.

\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

% To define a float of type TYPE (e.g., TYPE = figure), the document style 
% must define the following.
%
%  \fps@TYPE   : The default placement specifier for floats of type TYPE.
%
%  \ftype@TYPE : The type number for floats of type TYPE.  Each TYPE has
%                associated a unique positive TYPE NUMBER, which is a power 
%                of two.  E.g., figures might have type number 1, tables type 
%                number 2, programs type number 4, etc.
%
%  \ext@TYPE   : The file extension indicating the file on which the 
%                contents list for float type TYPE is stored.  For example, 
%                \ext@figure = 'lof'.
%
%  \fnum@TYPE  : A macro to generate the figure number for a caption.
%                For example, \fnum@TYPE == Figure \thefigure.
%
%  The actual float-making environment commands--e.g., the commands
%  \figure and \endfigure--are defined in terms of the macros \@float
%  and \end@float, which are described below.
%
%  \@float{TYPE}[PLACEMENT] : Macro to begin a float environment for a 
%     single-column float of type TYPE with PLACEMENT as the placement 
%     specifier.  The default value of PLACEMENT is defined by \fps@TYPE.   
%     The environment is ended by \end@float.  
%     E.g., \figure == \@float{figure}, \endfigure == \end@float.

% FIGURE
%
\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}

\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{Figure \thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}

% TABLE
%
\newcounter{table}
\def\thetable{\@arabic\c@table}

\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Table \thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}


%    ****************************************
%    *            PAGE STYLES               *
%    ****************************************
%
% The page style 'foo' is defined by defining the command \ps@foo.  This
% command should make only local definitions.  There should be no stray
% spaces in the definition, since they could lead to mysterious extra
% spaces in the output.
%
% The \ps@... command defines the macros \@oddhead, \@oddfoot,
% \@evenhead, and \@evenfoot to define the running heads and
% feet---e.g., \@oddhead is the macro to produce the contents of the
% heading box for odd-numbered pages.  It is called inside an \hbox of
% width \textwidth.
%
% To make headings determined by the sectioning commands, the page style
% defines the commands \chaptermark, \sectionmark, ... , where
% \chaptermark{TEXT} is called by \chapter to set a mark, and so on.
% The \...mark commands and the \...head macros are defined with the
% help of the following macros.  (All the \...mark commands should be
% initialized to no-ops.)
%
% MARKING CONVENTIONS:
% LaTeX extends TeX's \mark facility by producing two kinds of marks
% a 'left' and a 'right' mark, using the following commands:
%     \markboth{LEFT}{RIGHT} : Adds both marks.
%     \markright{RIGHT}      : Adds a 'right' mark.
%     \leftmark  : Used in the \@oddhead, \@oddfoot, \@evenhead or \@evenfoot
%                  macro, gets the current 'left'  mark.  Works like TeX's 
%                  \botmark command.
%     \rightmark : Used in the \@oddhead, \@oddfoot, \@evenhead or \@evenfoot
%                  macro, gets the current 'right'  mark.  Works like TeX's 
%                  \firstmark command.
% The marking commands work reasonably well for right marks 'numbered 
% within' left marks--e.g., the left mark is changed by a \chapter command and
% the right mark is changed by a \section command.  However, it does
% produce somewhat anomalous results if two \bothmark's occur on the same page.
% 

\mark{{}{}}   % Initializes TeX's marks

% \def\ps@empty{\def\@oddhead{}
%   \def\@oddfoot{}
%   \def\@evenhead{}\def\@evenfoot{}}
%
% \def\ps@plain{\def\@oddhead{}
%   \def\@oddfoot{\rm\hfil\thepage\hfil}
%   \def\@evenhead{}
%   \let\@evenfoot\@oddfoot}

% Definition of 'headings' page style 
%  Note the use of ##1 for parameter of \def\chaptermark inside the
%  \def\ps@headings.
%

\def\ps@headings{\def\@oddfoot{}\def\@evenfoot{}%     No feet.
\def\@oddhead{\hbox {}\slshape \rightmark \hfil \rm\thepage}% Heading.
\def\chaptermark##1{\markright {\uppercase{\ifnum \c@secnumdepth >\m@ne
  \@chapapp\ \thechapter. \ \fi ##1}}}}

% Definition of 'myheadings' page style.  
%
\def\ps@myheadings{\def\@oddhead{\hbox{}\slshape\rightmark \hfil \rm\thepage}%
\def\@oddfoot{}\def\@evenhead{\rm \thepage\hfil\slshape\leftmark\hbox {}}%
\def\@evenfoot{}\def\sectionmark##1{}\def\subsectionmark##1{}}


%    ****************************************
%    *            MISCELLANEOUS             *
%    ****************************************
%
% DATE
%
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}

% EQUATION and EQNARRAY -- put here because it must follow \chapter definition
%
% \newcounter{equation}    
%
\@addtoreset{equation}{chapter}   % Makes \chapter reset 'equation' counter.

\def\theequation{\thechapter.\arabic{equation}}

% \jot = 3pt      % Extra space added between lines of an eqnarray environment

% The macro \@eqnnum defines how equation numbers are to appear in equations.
%
% \def\@eqnnum{(\theequation)} 
% 

% CODE ENVIRONMENT
%
% same as verbatim except it is always in single spacing
% and double spacing is restores at the end

% \begingroup \catcode `|=0 \catcode `[= 1
% \catcode`]=2 \catcode `\{=12 \catcode `\}=12
% \catcode`\\=12 |gdef|@xcode#1\end{code}[#1|end[code]]
% |endgroup

\def\code{\par\renewcommand\baselinestretch{1}\@normalsize\@verbatim
\frenchspacing\@vobeyspaces \@xcode}
\def\endcode{\renewcommand\baselinestretch{\@spacing}\@normalsize\endtrivlist}

% FOOTNOTES
% change it so that footnotes are printed in single spacing
%
\long\def\@footnotetext#1{\insert\footins{\renewcommand\baselinestretch{1}
    \footnotesize
    \interlinepenalty\interfootnotelinepenalty 
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
   \edef\@currentlabel{\csname p@footnote\endcsname\@thefnmark}\@makefntext
    {\rule{\z@}{\footnotesep}\ignorespaces
      #1\strut}\renewcommand\baselinestretch{\@spacing}}}

%    ****************************************
%    *           INITIALIZATION             *
%    ****************************************
%
% Default initializations

\ps@plain                   % 'plain' page style
\pagenumbering{arabic}      % Arabic page numbers
\onecolumn                  % Single-column.
\raggedbottom

% \widowpenalty specifies the penality for breaking a page just before
% the last line of a paragraph.  (A line by itself at the top of the
% page is a ``widow line''.
\widowpenalty=10000

% \clubpenalty is the penalty for breaking a page just after the 
% first line of a paragraph.
\clubpenalty=10000


% Generate thesis preliminary pages
\input{umbthti.clo}
