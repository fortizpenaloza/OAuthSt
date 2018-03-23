as yet unclassified
authorizationUrl

	^ authorizationServer authorizationEndpoint
		queryAt: #client_id add: identifer;
		queryAt: #redirect_uri add: redirectUri;
		yourself