accessing
randomState

	"Acording to the RFC the state should bein ABNF syntax equals to 1*VSCHAR"

	| shuffledAllowedCharacters |

	shuffledAllowedCharacters := (16r20 to: 16r7E) shuffled first: 64.

	^ String streamContents: [ :stream | 
			shuffledAllowedCharacters
				do: [ :integer | stream nextPut: integer asCharacter ] ]