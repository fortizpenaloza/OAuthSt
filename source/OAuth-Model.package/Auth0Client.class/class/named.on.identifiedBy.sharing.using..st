instance creation
named: aName on: aHostname identifiedBy: anIdentifier sharing: aSecret using: aHTTPClientProvider

	^ self new
		initializeNamed: aName
		on: aHostname
		identifiedBy: anIdentifier
		sharing: aSecret
		using: aHTTPClientProvider