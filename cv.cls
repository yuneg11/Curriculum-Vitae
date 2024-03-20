%% Start of file `cv.cls'.
% Awesome CV Class File
%
% This class has been downloaded from:
% https://github.com/posquit0/Awesome-CV
%
% Author:
% Claud D. Park <posquit0.bj@gmail.com>
% http://www.posquit0.com
%
% Notes:
% 1) This class file defines the structure and layout of the template file (cv.tex, resume.tex).
% 2) It has been written in such a way that under most circumstances you
% should not need to edit it.
%
% Class license:
% LPPL v1.3c (http://www.latex-project.org/lppl)
%


%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------
\ProvidesClass{cv}[2017/02/05 v1.6.1 Awesome Curriculum Vitae Class]
\NeedsTeXFormat{LaTeX2e}


%-------------------------------------------------------------------------------
%                Class options
%
% (need to be done before the external package loading, for example because
% we need \paperwidth, \paperheight and \@ptsize to be defined before loading
% geometry and fancyhdr)
%-------------------------------------------------------------------------------
% Options for draft or final
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
% Inherit options of article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


%-------------------------------------------------------------------------------
%                3rd party packages
%-------------------------------------------------------------------------------
% Needed to make fixed length table
\RequirePackage{array}
% Needed to handle list environment
\RequirePackage{enumitem}
% Needed to handle text alignment
\RequirePackage{ragged2e}
% Needed to configure page layout
\RequirePackage{geometry}
% Needed to make header & footer effeciently
\RequirePackage{fancyhdr}
% Needed to manage colors
\RequirePackage{xcolor}
% Needed to use \ifxetex-\else-\fi statement
\RequirePackage{ifxetex}
% Needed to use \if-\then-\else statement
\RequirePackage{xifthen}
% Needed to use a toolbox of programming tools
\RequirePackage{etoolbox}
% Needed to change line spacing in specific environment
\RequirePackage{setspace}
% Needed to manage fonts
\RequirePackage[quiet]{fontspec}
% To support LaTeX quoting style
\defaultfontfeatures{Ligatures=TeX}
% Needed to manage math fonts
\RequirePackage{unicode-math}
% Needed to use icons from font-awesome
\RequirePackage{fontawesome5}
\RequirePackage{roboto}
\RequirePackage[default,opentype]{sourcesanspro}
% Needed to deal a paragraphs
\RequirePackage{parskip}
% Needed to deal hyperlink
\RequirePackage[hidelinks,unicode,pdfpagelabels=false]{hyperref}
\hypersetup{%
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={}
}
% Solves issues Warning: File `cv.out' has changed
\RequirePackage{bookmark}
% Needed to use korean
\RequirePackage{kotex}
% Needed to change date format
\RequirePackage{datetime2}
\DTMsetstyle{default}
\DTMsetup{datesep={.\ }}


%-------------------------------------------------------------------------------
%                Configuration for layout
%-------------------------------------------------------------------------------
%% Page Layout
% Configure page margins with geometry
\geometry{left=2.0cm, top=1.5cm, right=2.0cm, bottom=2.0cm, footskip=.5cm}

%% Header & Footer
% Set offset to each header and footer
\fancyhfoffset{0em}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer fields
\fancyhf{}
% Enable if you want to make header or footer using fancyhdr
\pagestyle{fancy}


%-------------------------------------------------------------------------------
%                Configuration for colors
%-------------------------------------------------------------------------------
% Gray-scale colors
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{5D5D5D}
\definecolor{lightgray}{HTML}{999999}
% Basic colors
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
% Text colors
\definecolor{darktext}{HTML}{414141}
\colorlet{text}{darkgray}
\colorlet{graytext}{gray}
\colorlet{lighttext}{lightgray}
\colorlet{sectiondivider}{gray}
% Awesome colors
\definecolor{awesome-emerald}{HTML}{00A388}
\definecolor{awesome-skyblue}{HTML}{0395DE}
\definecolor{awesome-red}{HTML}{DC3522}
\definecolor{awesome-pink}{HTML}{EF4089}
\definecolor{awesome-orange}{HTML}{FF6138}
\definecolor{awesome-nephritis}{HTML}{27AE60}
\definecolor{awesome-concrete}{HTML}{95A5A6}
\definecolor{awesome-darknight}{HTML}{131A28}
\colorlet{awesome}{awesome-red}


%-------------------------------------------------------------------------------
%                Configuration for fonts
%-------------------------------------------------------------------------------
\newcommand*{\headerfont}{\roboto}
\newcommand*{\headerfontlight}{\robotolight}
\newcommand*{\footerfont}{\robotolight}
\newcommand*{\bodyfont}{\sourcesanspro}
\newcommand*{\bodyfontlight}{\sourcesansprolight}

%-------------------------------------------------------------------------------
%                Configuration for styles
%-------------------------------------------------------------------------------
% Configure styles for each CV elements
% For fundamental structures
\newcommand*{\headerfirstnamestyle}[1]{{\fontsize{28pt}{1em}\headerfont\color{text} #1}}
\newcommand*{\headerlastnamestyle}[1]{{\fontsize{28pt}{1em}\headerfontlight\color{text} #1}}
\newcommand*{\headerkorfamilynamestyle}[1]{{\fontsize{10pt}{1em}\headerfont\color{text} #1}}
\newcommand*{\headerkorgivennamestyle}[1]{{\fontsize{10pt}{1em}\headerfontlight\color{text} #1}}
\newcommand*{\headeraddressstyle}[1]{{\fontsize{8pt}{1em}\headerfont\color{lighttext} #1}}
\newcommand*{\headersocialstyle}[1]{{\fontsize{7pt}{1em}\headerfont\color{text} #1}}
\newcommand*{\footerstyle}[1]{{\fontsize{10pt}{1em}\footerfont\color{text} #1}}
\newcommand*{\sectionstyle}[1]{{\fontsize{16pt}{1em}\bodyfontlight\scshape\bfseries\color{text} #1}}
\newcommand*{\subsectionstyle}[1]{{\fontsize{12pt}{1em}\bodyfont\scshape\textcolor{text}{#1}}}
\newcommand*{\paragraphstyle}{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text}}

% For elements of entry
\newcommand*{\entrytitlestyle}[1]{{\fontsize{12pt}{1em}\bodyfontlight\bfseries\color{darktext} #1}}
\newcommand*{\entrysubtitlestyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\color{darktext} #1}}
\newcommand*{\entrypositionstyle}[1]{{\fontsize{10pt}{1em}\bodyfont\slshape\color{text} #1}}
\newcommand*{\entrydatestyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\entrylocationstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}
\newcommand*{\descriptionstyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of subentry
\newcommand*{\subentrytitlestyle}[1]{{\fontsize{8pt}{1em}\bodyfont\mdseries\color{graytext} #1}}
\newcommand*{\subentrypositionstyle}[1]{{\fontsize{7pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\subentrydatestyle}[1]{{\fontsize{7pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\subentrylocationstyle}[1]{{\fontsize{7pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}
\newcommand*{\subdescriptionstyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of honor
\newcommand*{\honortitlestyle}[1]{{\fontsize{11pt}{1em}\bodyfontlight\bfseries\color{darktext} #1}}
\newcommand*{\honorsubtitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\color{darktext} #1}}
\newcommand*{\honordatestyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\honordescriptionstyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of project
\newcommand*{\projecttitlestyle}[1]{{\fontsize{11pt}{1em}\bodyfontlight\bfseries\color{darktext} #1}}
\newcommand*{\projectsubtitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\color{darktext} #1}}
\newcommand*{\projectdatestyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\projectdescriptionstyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of skill
\newcommand*{\skilltypestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\skillsetstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\color{text} #1}}

% For elements of publication
\newcommand*{\publicationtitlestyle}[1]{{\fontsize{11pt}{1em}\bodyfontlight\bfseries\color{darktext} #1}}
\newcommand*{\publicationsubtitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\color{darktext} #1}}
\newcommand*{\publicationvenuestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\color{awesome} #1}}
\newcommand*{\publicationyearstyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\publicationdescriptionstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text} #1}}

%-------------------------------------------------------------------------------
%                Commands for personal information
%-------------------------------------------------------------------------------

% Define writer's name
% Usage: \name{<firstname>}{<lastname>}
% Usage: \firstname{<firstname>}
% Usage: \lastname{<lastname>}
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}

% Define writer's korean name
% Usage: \korname{<familyname>}{<givenname>}
% Usage: \korfamilyname{<familyname>}
% Usage: \korgivenname{<givenname>}
\newcommand*{\korname}[2]{\def\@korfamilyname{#1}\def\@korgivenname{#2}}
\newcommand*{\korfamilyname}[1]{\def\@korfamilyname{#1}}
\newcommand*{\korgivenname}[1]{\def\@korgivenname{#1}}

% Define writer's address
% Usage: \address{<address>}
\newcommand*{\address}[1]{\def\@address{#1}}

% Defines writer's mobile (optional)
% Usage: \mobile{<mobile number>}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}

% Defines writer's email (optional)
% Usage: \email{<email address>}
\newcommand*{\email}[1]{\def\@email{#1}}

% Defines writer's date of birth (optional)
% Usage: \dateofbirth{<date>}
\newcommand*{\dateofbirth}[1]{\def\@dateofbirth{#1}}

% Defines writer's homepage (optional)
% Usage: \homepage{<url>}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}

% Defines writer's github (optional)
% Usage: \github{<github-nick>}
\newcommand*{\github}[1]{\def\@github{#1}}

% Defines writer's linked-in (optional)
% Usage: \linkedin{<linked-in-nick>}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}

% Defines writer's google scholar profile (optional)
% Usage: \googlescholar{<googlescholar userid>}{<googlescholar username>}
% e.g.https://scholar.google.co.uk/citations?user=wpZDx1cAAAAJ
% would be \googlescholar{wpZDx1cAAAAJ}{Name-to-display-next-icon}
% If 'googlescholar-name' is not provided than it defaults to
% '\firstname \lastname'
\newcommand*{\googlescholar}[2]{%
  \def\@googlescholarid{#1}%
  \ifthenelse{\equal{#2}{}}{%
    \def\@googlescholarname{\@firstname~\@lastname}%
  }{%
    \def\@googlescholarname{#2}%
  }%
}


%-------------------------------------------------------------------------------
%                Commands for extra
%-------------------------------------------------------------------------------
%% Define helper macros a user can change easily
% Header
\newcommand{\acvHeaderNameDelim}{\space}
\newcommand{\acvHeaderAfterNameSkip}{1.5mm}
\newcommand{\acvHeaderAfterKorNameSkip}{1.5mm}
\newcommand{\acvHeaderAfterAddressSkip}{1.5mm}
\newcommand{\acvHeaderIconSep}{\space}
\newcommand{\acvHeaderSocialSep}{\quad\textbar\quad}
\newcommand{\acvHeaderAfterSocialSkip}{5mm}

% Others
\newcommand{\acvSectionTopSkip}{3mm}
\newcommand{\acvSectionContentTopSkip}{2mm}


%-------------------------------------------------------------------------------
%                Commands for utilities
%-------------------------------------------------------------------------------
% Use to align an element of tabular table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Use to draw horizontal line with specific thickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

% Use to execute conditional statements by checking empty string
\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}


%-------------------------------------------------------------------------------
%                Commands for elements of CV structure
%-------------------------------------------------------------------------------
% Define a header for CV
% Usage: \makecvheader
\newcommand*{\makecvheader}[1][C]{%
  \newlength{\headertextwidth}
  \setlength{\headertextwidth}{\textwidth}
  \begin{minipage}[c]{\headertextwidth}
    \ifthenelse{\equal{#1}{L}}{\raggedright}{\ifthenelse{\equal{#1}{R}}{\raggedleft}{\centering}}
    \headerfirstnamestyle{\@firstname}\headerlastnamestyle{{}\acvHeaderNameDelim\@lastname}%
    \\[\acvHeaderAfterNameSkip]%
    \headerkorfamilynamestyle{\@korfamilyname}\headerkorgivennamestyle{{}\acvHeaderNameDelim\@korgivenname}%
    \\[\acvHeaderAfterKorNameSkip]%
    \ifthenelse{\isundefined{\@address}}{}{\headeraddressstyle{\@address\\[\acvHeaderAfterAddressSkip]}}%
    \headersocialstyle{%
      \newbool{isstart}%
      \setbool{isstart}{true}%
      \ifthenelse{\isundefined{\@mobile}}%
        {}%
        {%
          \href{tel:\@mobile}{\faMobile\acvHeaderIconSep\@mobile}%
          \setbool{isstart}{false}%
        }%
      \ifthenelse{\isundefined{\@email}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{mailto:\@email}{\faEnvelope\acvHeaderIconSep\@email}%
        }%
      \ifthenelse{\isundefined{\@dateofbirth}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          % \mbox prevents wrapping of elements%
          \mbox{\faBirthdayCake\acvHeaderIconSep\@dateofbirth}%
        }%
      % \\ \setbool{isstart}{true}%
      \ifthenelse{\isundefined{\@homepage}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{http://\@homepage}{\faHome\acvHeaderIconSep\@homepage}%
        }%
      \ifthenelse{\isundefined{\@github}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://github.com/\@github}{\faGithubSquare\acvHeaderIconSep\@github}%
        }%
      \ifthenelse{\isundefined{\@linkedin}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://www.linkedin.com/in/\@linkedin}{\faLinkedin\acvHeaderIconSep\@linkedin}%
        }%
      \ifthenelse{\isundefined{\@googlescholarid}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://scholar.google.com/citations?user=\@googlescholarid}{\faGraduationCap\acvHeaderIconSep\@googlescholarname}%
        }%
    } \\[\acvHeaderAfterSocialSkip]%
  \end{minipage}%
}

% Define a footer for CV
% Usage: \makecvfooter{<left>}{<center>}{<right>}
\newcommand*{\makecvfooter}[3]{%
  \fancyfoot{}
  \fancyfoot[L]{\footerstyle{#1}}
  \fancyfoot[C]{\footerstyle{#2}}
  \fancyfoot[R]{\footerstyle{#3}}
}

% Define a section for CV
% Usage: \cvsection{<section-title>}
\newcommand{\cvsection}[1]{%
  \vspace{\acvSectionTopSkip}
  \sectionstyle{#1}
  \phantomsection\\[-2mm]
  \color{sectiondivider}\vhrulefill{.7pt}
}

% Define a subsection for CV
% Usage: \cvsubsection{<subsection-title>}
\newcommand{\cvsubsection}[1]{%
  \vspace{\acvSectionContentTopSkip}
  \subsectionstyle{#1}
  \phantomsection
}

% Define a paragraph for CV
\newenvironment{cvparagraph}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-3mm}
  \paragraphstyle
}{%
  \par
  \vspace{2mm}
}

% Define an environment for cventry
\newenvironment{cventries}{%
  \vspace{\acvSectionContentTopSkip}
  \begin{center}
}{%
  \end{center}
}

% Define an entry of cv information
% Usage: \cventry{<position>}{<title>}{<subtitle>}{<location>}{<date>}{<description>}
\newcommand*{\cventry}[6]{%
  \vspace{-1.0mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \ifempty{#2#3#4}
      {\entrypositionstyle{#1} & \entrydatestyle{#5} \\}
      {\entrytitlestyle{#2} & \entrylocationstyle{#4} \\
       \entrysubtitlestyle{#3} & \entrydatestyle{#5} \\[1mm]
       \entrypositionstyle{#1} & \\}
    \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#6}}
  \end{tabular*}%
}

% Define an environment for cvsubentry
\newenvironment{cvsubentries}{%
  \begin{center}
}{%
  \end{center}
}

% Define a subentry of cv information
% Usage: \cvsubentry{<position>}{<title>}{<date>}{<description>}
\newcommand*{\cvsubentry}[4]{%
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \setlength\leftskip{0.2cm}
    \subentrytitlestyle{#2} & \ifthenelse{\equal{#1}{}}
      {\subentrydatestyle{#3}}{}
    \ifthenelse{\equal{#1}{}}
      {}
      {\subentrypositionstyle{#1} & \subentrydatestyle{#3} \\}
    \ifthenelse{\equal{#4}{}}
      {}
      {\multicolumn{2}{L{17.0cm}}{\subdescriptionstyle{#4}} \\}
  \end{tabular*}
}

% Define a line of cv information(honor, award or something else)
% Usage: \cvhonor{<title>}{<subtitle>}{<date>}{<description>}
\newcommand*{\cvhonor}[4]{%
  \vspace{-1.0mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 3.5cm} R{3.5cm}}
    \honortitlestyle{#1} & \honordatestyle{#3} \\[1mm]
    \honorsubtitlestyle{#2} & \\
    \honordescriptionstyle{#4}
  \end{tabular*}%
}

% Define a line of cv information(honor, award or something else)
% Usage: \cvproject{<title>}{<subtitle>}{<date>}{<description>}
\newcommand*{\cvproject}[4]{%
  \vspace{-1.0mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 2.8cm} R{2.8cm}}
    \projecttitlestyle{#1} & \projectdatestyle{#3} \\[1mm]
    \projectsubtitlestyle{#2} & \\
    \multicolumn{2}{L{\textwidth}}{\projectdescriptionstyle{#4}}
  \end{tabular*}%
}

% Define a line of cv information(honor, award or something else)
% Usage: \cvsoftware{<title>}{<subtitle>}{<date>}{<description>}
\newcommand*{\cvsoftware}[4]{%
  \vspace{-1.0mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 2.8cm} R{2.8cm}}
    \projecttitlestyle{#1} & \projectdatestyle{#3} \\[1mm]
    \ifempty{#4}{%
      \publicationsubtitlestyle{#2}
    }{%
      \publicationsubtitlestyle{#2} & \\
      \multicolumn{2}{L{\textwidth}}{\projectdescriptionstyle{#4}}
    }
  \end{tabular*}%
}

% Define an environment for cvskill
\newenvironment{cvskills}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2.0mm}
  \begin{center}
    \setlength\tabcolsep{1ex}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} r L{\textwidth * \real{0.9}}}
}{%
    \end{tabular*}
  \end{center}
}

% Define a line of cv information(skill)
% Usage: \cvskill{<type>}{<skillset>}
\newcommand*{\cvskill}[2]{%
	\skilltypestyle{#1} & \skillsetstyle{#2} \\
}

% Define an environment for cvitems(for cventry)
\newenvironment{cvitems}{%
  \vspace{-3mm}
  \begin{justify}
  \begin{itemize}[leftmargin=2ex, nosep, itemsep=1.5mm]
    \setlength{\parskip}{0pt}
    \renewcommand{\labelitemi}{\bullet}
}{%
  \end{itemize}
  \end{justify}
  \vspace{-3mm}
}

% Define an entry of cv information
% Usage: \cventry{<title>}{<subtitle>}{<location>}{<year>}{<description>}
\newcommand*{\cvpublication}[5]{%
  \vspace{1.5mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 2.7cm} R{2.7cm}}
    \publicationtitlestyle{#1} & \publicationvenuestyle{#3} \\[.5mm]
    \publicationsubtitlestyle{#2} & \publicationyearstyle{#4}
    \ifempty{#5}{}{
      \\[1mm]
      \multicolumn{2}{L{\textwidth}}{\publicationdescriptionstyle{#5}}
    }
  \end{tabular*}%
}

\def\cveducation{\cventry}
\def\cvexperience{\cventry}
