instance creation
registeredOn: anOAuth2AuthorizationServer as: anIdentifier sharing: aSecret redirectingTo: aRedirectUri

	^ self new
		initializeRegisteredOn: anOAuth2AuthorizationServer
		as: anIdentifier
		sharing: aSecret
		redirectingTo: aRedirectUri