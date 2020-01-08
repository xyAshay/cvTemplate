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
\usepackage[left=1.4cm, top=1cm, right=1.4cm, bottom=1cm, footskip=0.25cm]{geometry}
\usepackage{fontspec}
\usepackage{ragged2e}
\usepackage{fancyhdr}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\usepackage{fontawesome}

%%DEFINE COLORS
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{main}{HTML}{000272}
\definecolor{darkgrey}{HTML}{333333}
\definecolor{grey}{HTML}{555555}

%%%%%%%COVERLETTER
%%DRAWING HEADER
\newcommand{\drawHeadCL}[1]{
	\vspace*{0pt}
	\raggedleft{
		\fontsize{30pt}{36pt}
		\fontspec[Path = fonts/roboto/]{Roboto-Medium}\selectfont\color{main} #1
	}
	\vspace{25pt}
	\color{grey}\hrule
}

%%DRAW SIDE
\newcommand{\drawSide}[3]{
	\setlength{\TPHorizModule}{1mm} \setlength{\TPVertModule}{1mm}
	\begin{textblock}{100}(15,10)	
		\fontsize{11pt}{13pt}
		\fontspec[Path = fonts/raleway/]{Raleway-Italic}\raggedright\selectfont\color{grey} \faPhone \hspace{5pt} #1
		\\[5pt]
		\fontspec[Path = fonts/raleway/]{Raleway-Italic}\raggedright\selectfont\color{grey} \faEnvelopeO \hspace{5pt} #2
		\\[5pt]
		\fontspec[Path = fonts/raleway/]{Raleway-Italic}\raggedright\selectfont\color{grey} \faLinkedinSquare \hspace{5pt} #3
	\end{textblock}
}

%%DRAWFOOTER
\newcommand{\drawFoot}[1]{
	\fancyfoot{}
	\fancyfoot[C]{
		\fontsize{8pt}{11pt}
		\fontspec[Path = fonts/raleway/]{Raleway-Regular}\selectfont\color{grey} #1 \textbullet{} Cover Letter
	}
}

%%%CUSTOM COMMANDS
\newcommand{\heading}[1]{
	\raggedright
	\fontsize{13pt}{15pt}
	\fontspec[Path = fonts/raleway/]{Raleway-SemiBold}\selectfont\color{darkgrey} #1
	\\[5pt]
}


\newcommand{\body}[1]{
	\raggedright
	\fontsize{12pt}{15pt}
	\fontspec[Path = fonts/raleway/]{Raleway-Regular}\selectfont\color{grey} #1 \normalfont
	\\[10pt]
}

\newcommand{\letterBody}[1]{
	\justifying{
	\fontsize{12pt}{15pt}
	\fontspec[Path = fonts/raleway/]{Raleway-Regular}\selectfont\color{grey} #1 \normalfont}
	\\[10pt]
}
