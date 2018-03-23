as yet unclassified
performOn: aHttpClient

	| response |

	client performOn: aHttpClient.

	aHttpClient
		formAt: #grant_type put: self grantType;
		formAt: #scope put: scope;
		formAt: #username put: username;
		formAt: #password put: password;
		yourself.

	response := aHttpClient
		post;
		response.

	^ response isSuccess
		ifTrue: [ self accessTokenFrom: response ]
		ifFalse: [ InvalidGrant new
				tag: response;
				signal ]