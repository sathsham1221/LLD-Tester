%
% ClemsonProposal
%
% Clemson University Computer Science Department
% Dissertation Proposal Template
%
% Developed by Andrew R. Dalton, School of Computing
%
\newcommand{\ClemsonProposalUpdate}{2007/06/28}
\newcommand{\ClemsonProposalVersion}{v.2.0}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ClemsonProposal}[\ClemsonProposalUpdate Version \ClemsonProposalVersion\space by Andrew R. Dalton]

%
% This document class is based on the 'article' document class
%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article} 


%
% Some packages we depend upon
% 
\usepackage[letterpaper,
            lmargin=1.0in,
            rmargin=1.0in,
            tmargin=1.0in,
            bmargin=1.0in]{geometry}  % Easily set margins 
\usepackage[title,titletoc]{appendix} % Configure appendix formatting
\usepackage{fancyhdr}
\usepackage{setspace}
\usepackage[plainpages=false,
            pdfpagelabels]{hyperref}  % Get nice PDF links

%
% Initially define all of our variables as empty
%
\gdef\@ClemsonProposalDay{}
\gdef\@ClemsonProposalMonth{}
\gdef\@ClemsonProposalYear{}
\gdef\@ClemsonProposalMajor{}
\gdef\@ClemsonProposalDepartment{}
\gdef\@ClemsonProposalDocumentType{}
\gdef\@ClemsonProposalCommitteeChair{}
\gdef\@ClemsonProposalMemberOne{}
\gdef\@ClemsonProposalMemberTwo{}
\gdef\@ClemsonProposalMemberThree{}
\gdef\@ClemsonProposalMemberFour{}
\gdef\@ClemsonProposalMemberFive{}
\gdef\@ClemsonProposalMemberSix{}
\gdef\@ClemsonProposalAuthor{}
\gdef\@title{}



%
% Some commands to set our variables
%
\newcommand{\proposalday}[1]          {\ifx\empty#1\else \gdef\@ClemsonProposalDay{#1}            \fi}
\newcommand{\proposalmonth}[1]        {\ifx\empty#1\else \gdef\@ClemsonProposalMonth{#1}          \fi}
\newcommand{\proposalyear}[1]         {\ifx\empty#1\else \gdef\@ClemsonProposalYear{#1}           \fi}
\newcommand{\major}[1]                {\ifx\empty#1\else \gdef\@ClemsonProposalMajor{#1}          \fi}
\newcommand{\department}[1]           {\ifx\empty#1\else \gdef\@ClemsonProposalDepartment{#1}     \fi}
\newcommand{\documenttype}[1]         {\ifx\empty#1\else \gdef\@ClemsonProposalDocumentType{#1}   \fi}
\newcommand{\committeechair}[1]       {\ifx\empty#1\else \gdef\@ClemsonProposalCommitteeChair{#1} \fi}
\newcommand{\committeememberone}[1]   {\ifx\empty#1\else \gdef\@ClemsonProposalMemberOne{#1}      \fi}
\newcommand{\committeemembertwo}[1]   {\ifx\empty#1\else \gdef\@ClemsonProposalMemberTwo{#1}      \fi}
\newcommand{\committeememberthree}[1] {\ifx\empty#1\else \gdef\@ClemsonProposalMemberThree{#1}    \fi}
\newcommand{\committeememberfour}[1]  {\ifx\empty#1\else \gdef\@ClemsonProposalMemberFour{#1}     \fi}
\newcommand{\committeememberfive}[1]  {\ifx\empty#1\else \gdef\@ClemsonProposalMemberFive{#1}     \fi}
\newcommand{\committeemembersix}[1]   {\ifx\empty#1\else \gdef\@ClemsonProposalMemberSix{#1}      \fi}
\renewcommand{\author}[1]             {\ifx\empty#1\else \gdef\@ClemsonProposalAuthor{#1}         \fi}
\renewcommand{\title}[1]              {\ifx\empty#1\else \gdef\@title{#1}                         \fi}


%
% Some commands to get the values of our variables
%
\newcommand{\theproposalday}{%
    \ifx\@ClemsonProposalDay\@empty
        \PackageError{ClemsonProposal}{'proposalday' has not been defined}\@ehc
    \else
        \@ClemsonProposalDay
    \fi
}

\newcommand{\theproposalmonth}{%
    \ifx\@ClemsonProposalMonth\@empty
        \PackageError{ClemsonProposal}{'proposalmonth' has not been defined}\@ehc
    \else
        \@ClemsonProposalMonth
    \fi
}

\newcommand{\theproposalyear}{%
    \ifx\@ClemsonProposalYear\@empty
        \PackageError{ClemsonProposal}{'proposalyear' has not been defined}\@ehc
    \else
        \@ClemsonProposalYear
    \fi
}

\newcommand{\themajor}{%
    \ifx\@ClemsonProposalMajor\@empty
        \PackageError{ClemsonProposal}{'major' has not been defined}\@ehc
    \else
        \@ClemsonProposalMajor
    \fi
}

\newcommand{\thedepartment}{%
    \ifx\@ClemsonProposalDepartment\@empty
        \PackageError{ClemsonProposal}{'department' has not been defined}\@ehc
    \else
        \@ClemsonProposalDepartment
    \fi
}

\newcommand{\thedocumenttype}{%
    \ifx\@ClemsonProposalDocumentType\@empty
        \PackageError{ClemsonProposal}{'documenttype' has not been defined}\@ehc
    \else
        \@ClemsonProposalDocumentType
    \fi
}

\newcommand{\thecommitteechair}{%
    \ifx\@ClemsonProposalCommitteeChair\@empty
        \PackageError{ClemsonProposal}{'committeechair' has not been defined}\@ehc
    \else
        \@ClemsonProposalCommitteeChair
    \fi
}

\newcommand{\thecommitteememberone}{%
    \ifx\@ClemsonProposalMemberOne\@empty
        \PackageError{ClemsonProposal}{'committeememberone' has not been defined}\@ehc
    \else
        \@ClemsonProposalMemberOne
    \fi
}

\newcommand{\thecommitteemembertwo}{%
    \ifx\@ClemsonProposalMemberTwo\@empty
        \PackageError{ClemsonProposal}{'committeemembertwo' has not been defined}\@ehc
    \else
        \@ClemsonProposalMemberTwo
    \fi
}

\newcommand{\thecommitteememberthree}{%
    \ifx\@ClemsonProposalMemberThree\@empty
        \PackageError{ClemsonProposal}{'committeememberthree' has not been defined}\@ehc
    \else
        \@ClemsonProposalMemberThree
    \fi
}

\newcommand{\thecommitteememberfour}{%
    \ifx\@ClemsonProposalMemberFour\@empty
        \PackageError{ClemsonProposal}{'committeememberfour' has not been defined}\@ehc
    \else
        \@ClemsonProposalMemberFour
    \fi
}

\newcommand{\thecommitteememberfive}{%
    \ifx\@ClemsonProposalMemberFive\@empty
        \PackageError{ClemsonProposal}{'committeememberfive' has not been defined}\@ehc
    \else
        \@ClemsonProposalMemberFive
    \fi
}

\newcommand{\thecommitteemembersix}{%
    \ifx\@ClemsonProposalMemberSix\@empty
        \PackageError{ClemsonProposal}{'committeemembersix' has not been defined}\@ehc
    \else
        \@ClemsonProposalMemberSix
    \fi
}

\newcommand{\theauthor}{%
    \ifx\@ClemsonProposalAuthor\@empty
        \PackageError{ClemsonProposal}{'author' has not been defined}\@ehc
    \else
        \@ClemsonProposalAuthor
    \fi
}

\newcommand{\thetitle}{%
    \ifx\@title\@empty
        \PackageError{ClemsonProposal}{'title' has not been defined}\@ehc
    \else
        \@title
    \fi
}

% Make the Table of Contents title read 'Outline'
\renewcommand\contentsname{\Large{Abstract}}

% Make the References title read 'Bibliography'
\renewcommand\refname{\Large{Bibliography}}

% A command to control the line spacing
\newcommand{\newlinestretch}[1]{\renewcommand{\baselinestretch}{#1}\normalsize}

% Use a nice font when displaying source listings
\renewcommand{\ttdefault}{pcr}



%
% Format of the title page body
%
\renewcommand{\maketitle}{%
    \lhead{\theauthor}
    \chead{\empty}
    \rhead{\thedocumenttype}
    \lfoot{\empty}
    \cfoot{\thepage}
    \rfoot{\empty}

    \begin{titlepage}
    \singlespacing
    \pagestyle{empty}
    \begin{center}
        {\ }\\[1in]
        \newlinestretch{1.5}
        {\sc{{\Large \thetitle}}}\\
        \rule{4in}{0.5pt}\\[2.5ex]
        {\thedocumenttype} by \\
        \theauthor \\
        {\theproposalday} {\theproposalmonth} {\theproposalyear} \\[2.5ex]
        \rule{4in}{0.5pt}\\[2.5ex]
       % Submitted to the graduate faculty of the\\
        \thedepartment \\ 
       % in partial fulfillment of the requirements\\
        %for the {\thedocumenttype} and\\
        %subsequent Ph.D. in {\themajor}\\[2.5ex]
        \rule{4in}{0.5pt}\\[2.5ex]
        \newlinestretch{1.2}
        Committee Members:\\
        \indent {\thecommitteechair}\\
        \ifx \@ClemsonProposalMemberOne   \empty \else \indent\@ClemsonProposalMemberOne\\   \fi
        \ifx \@ClemsonProposalMemberTwo   \empty \else \indent\@ClemsonProposalMemberTwo\\   \fi
        \ifx \@ClemsonProposalMemberThree \empty \else \indent\@ClemsonProposalMemberThree\\ \fi
        \ifx \@ClemsonProposalMemberFour  \empty \else \indent\@ClemsonProposalMemberFour\\  \fi
        \ifx \@ClemsonProposalMemberFive  \empty \else \indent\@ClemsonProposalMemberFive\\  \fi
        \ifx \@ClemsonProposalMemberSix   \empty \else \indent\@ClemsonProposalMemberSix\\   \fi
    \end{center}
    \end{titlepage}
}


%
% Command to generate bibliography
%
\newcommand{\makebibliography}[1]{%
    \singlespacing
    \bibliographystyle{plain}
    \phantomsection
    \addcontentsline{toc}{section}{Bibliography}
    \bibliography{#1}
}


%
% Redefine the 'abstract' environment to match the guidelines
%
\renewenvironment{abstract}{
    \singlespacing
    \begin{center}
        \Large{\textbf{Abstract}}
        \vspace{.1in}
    \end{center}
    \phantomsection
    \addcontentsline{toc}{section}{Abstract}
}{\par\singlespacing\newpage}

%
% Define the 'frontmatter' environment

\newenvironment{frontmatter}
  {\pagestyle{plain}\pagenumbering{roman}}
  {\cleardoublepage\pagenumbering{arabic}}


\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{3}






\flushbottom
