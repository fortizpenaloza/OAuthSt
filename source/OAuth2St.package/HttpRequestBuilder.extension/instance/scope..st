*OAuth2St
scope: aCollection

	^ AddFormFieldCommand
		named: #scope
		pairedTo: ( ( CollectionFormatter separatingWith: ' ' ) format: aCollection )