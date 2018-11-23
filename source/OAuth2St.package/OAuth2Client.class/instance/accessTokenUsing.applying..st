as yet unclassified
accessTokenUsing: aHttpClient applying: aNapCommand

	| response |

	aHttpClient url: authorizationServer tokenEndpoint.

	aNapCommand + (SetBasicAuthenticationCommand with: identifer password: secret)
		applyOn: aHttpClient.

	response := aHttpClient
		post;
		response.

	^ response isSuccess
		ifTrue: [ OAuth2AccessToken from: (STONJSON fromString: response contents) ]
		ifFalse: [ OAuth2Error from: (STONJSON fromString: response contents) ]