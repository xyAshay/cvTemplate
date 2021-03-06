%% IDENTIFICATION
\ProvidesClass{CVStyling}[2019/11/18 CV Class]
\NeedsTeXFormat{LaTeX2e}


\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
%INHERIT OPTIONS FROM ARTICLE
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

%% PACKAGES
\usepackage[left=1.4cm, top=0.3cm, right=1.4cm, bottom=1cm, footskip=0.25cm]{geometry}
\usepackage{fontspec}
\usepackage{ragged2e}
\usepackage{fancyhdr}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\usepackage{fontawesome}

%%DEFINE COLORS
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{main}{HTML}{000272}
\definecolor{darkgrey}{HTML}{333333}
\definecolor{grey}{HTML}{555555}

%%CV-TEMPLATE
%%DRAWING THE HEADER SECTION
\newcommand{\drawHead}[3]{
	\vspace*{0pt}
	\raggedright{
		\fontsize{30pt}{36pt}
		\fontspec[Path = fonts/roboto/]{Roboto-Medium}\selectfont\color{main} #1
		\fontspec[Path = fonts/roboto/]{Roboto-Medium}\selectfont\color{main} #2
		\\
		\fontsize{14pt}{17pt}
		\fontspec[Path = fonts/roboto/]{Roboto-LightItalic}\selectfont\color{main} #3
		\\[25pt]
	}
}


%%DRAWING LAST UPDATED
\newcommand{\showUpdated}{
	\setlength{\TPHorizModule}{1mm} \setlength{\TPVertModule}{1mm}
	\begin{textblock}{50}(150,2)
		\fontsize{8pt}{10pt}
		\fontspec[Path = fonts/raleway/]{Raleway-Regular}\selectfont\color{grey} Last Updated On \today
	\end{textblock}
}

%%DRAWING FOOTER
\newcommand{\drawFoot}[1]{
	\fancyfoot{}
	\fancyfoot[C]{
		\fontsize{8pt}{11pt}
		\fontspec[Path = fonts/raleway/]{Raleway-Regular}\selectfont\color{grey} #1 \textbullet{} Curriculum Vitae
	}
}

%%DRAW OBJECTIVE
\newcommand{\drawObj}[1]{
	\setlength{\TPHorizModule}{1mm} \setlength{\TPVertModule}{1mm}
	\begin{textblock}{100}(95,5)	
		\fontsize{11pt}{13pt}
		\fontspec[Path = fonts/raleway/]{Raleway-Italic}\center\selectfont\color{grey} #1
	\end{textblock}
}

%%FORMATTING SECTIONS
\titleformat{\section}{
	\raggedright
	\fontsize{15pt}{18pt}
	\fontspec[Path = fonts/raleway/]{Raleway-Medium}\selectfont\color{main}
}{}{0pt}{} 

%%CUSTOM COMMANDS
\newcommand{\heading}[1]{
	\raggedright
	\fontsize{10pt}{12pt}
	\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\selectfont\color{darkgrey} #1
	\\
}

\newcommand{\body}[1]{
	\raggedright
	\fontsize{11pt}{13pt}
	\fontspec[Path = fonts/raleway/]{Raleway-Regular}\selectfont\color{grey} #1
	\\[10pt]
}

\newcommand{\inHeading}[1]{
	\raggedright
	\fontsize{10pt}{12pt}
	\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\selectfont\color{darkgrey} #1
}

\newcommand{\inBody}[1]{
	\raggedright
	\fontsize{11pt}{13pt}
	\fontspec[Path = fonts/raleway/]{Raleway-Regular}\selectfont\color{grey} #1
}

\newcommand{\secEnd}{
	\vspace{10pt}
}

\newcommand{\secLine}{
	\vspace{-13pt}\color{darkgrey}\rule{0.95\textwidth}{1pt}\vspace{7pt}
}

\newcommand{\secLinee}{
	\vspace{-13pt}\color{darkgrey}\rule{1.05\textwidth}{1pt}\vspace{5pt}
}



