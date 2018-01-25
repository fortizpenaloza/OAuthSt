instance creation
named: aName on: aHostname identifiedBy: anIdentifier sharing: aSecret 

	^ self new
		initializeNamed: aName
		on: aHostname
		identifiedBy: anIdentifier
		sharing: aSecret
		using: [ ZnClient new ]