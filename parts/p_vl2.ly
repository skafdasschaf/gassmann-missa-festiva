% (c) 2020 by Wolfgang Esser-Skala.
% This file is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

\version "2.18.0"

\include "../definitions.ly"

\paper {
	indent = 2\cm
	top-margin = 1.5\cm
	system-separator-markup = ##f
	system-system-spacing =
    #'((basic-distance . 17)
       (minimum-distance . 17)
       (padding . -100)
       (stretchability . 0))

	top-system-spacing =
    #'((basic-distance . 17)
       (minimum-distance . 17)
       (padding . -100)
       (stretchability . 0))

	top-markup-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . -100)
       (stretchability . 0))

	markup-system-spacing =
    #'((basic-distance . 17)
       (minimum-distance . 17)
       (padding . -100)
       (stretchability . 0))

	systems-per-page = #9
}

#(set-global-staff-size 17.82)

\layout {
	\context {
		\Staff
		instrumentName = "Violino II"
	}
}

\book {
	\bookpart {
		\header {
			movement = \movementTitle "1" "K Y R I E"
		}
		\paper { page-count = #3 }
		\score {
			<<
				\new Staff { \KyrieViolinoII }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "2" "G L O R I A"
		}
		\paper { page-count = #6 }
		\score {
			<<
				\new Staff { \GloriaViolinoII }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "3" "C R E D O"
		}
		\score {
			<<
				\new Staff { \CredoViolinoII }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "4" "S A N C T U S"
		}
		\score {
			<<
				\new Staff { \SanctusViolinoII }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "5" "B E N E D I C T U S"
		}
		\paper { systems-per-page = #8 }
		\score {
			<<
				\new Staff { \BenedictusViolinoII }
			>>
		}
	}
	\bookpart {
		\header {
			movement = \movementTitle "6" "A G N U S   D E I"
		}
		\score {
			<<
				\new Staff { \AgnusDeiViolinoII }
			>>
		}
	}
}
