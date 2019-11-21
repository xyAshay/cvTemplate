%% BASICS
\ProvidesClass{myCV}[2019/11/18 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


%% PACKAGES
\usepackage[hmargin=1.5cm , vmargin=1cm]{geometry}
\usepackage{fontspec}
\usepackage{ragged2e}
\usepackage{titlesec}

%%DEFINE COLORS
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{main}{HTML}{000272}


%%DRAWING THE HEADER SECTION
\newcommand{\drawHead}[3]{
	\vspace*{-10pt}
	\RaggedRight{
		\fontsize{28}{36}
		\fontspec[Path = fonts/roboto/]{Roboto-Medium}\selectfont\color{main} #1
		\fontspec[Path = fonts/roboto/]{Roboto-Medium}\selectfont\color{main} #2
		\\
		\fontsize{12}{18}
		\fontspec[Path = fonts/roboto/]{Roboto-LightItalic}\selectfont\color{main} #3
		\\[5pt]
	}
} 
