as yet unclassified
performOn: aHttpClient with: aRedirectUrl 
	
	| response |

	client performOn: aHttpClient.

	aHttpClient
		formAt: #grant_type put: self grantType;
		formAt: #code put: (aRedirectUrl queryFields at: #code);
		formAt: #redirect_uri put: 'http://localhost:8080/sign-in';
		yourself.

	response := aHttpClient
		post;
		response.

	^ response isSuccess
		ifTrue: [STONJSON fromString: response contents ]
		ifFalse: [ InvalidGrant new
				tag: response;
				signal ]