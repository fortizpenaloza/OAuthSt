grant access token
grantAccessTokenFor: aUsername protectedBy: aPassword for: aScope

	| httpClient response |

	httpClient := client httpClient
		beOneShot;
		url: client tokenURL;
		formAt: #grant_type put: self grantType;
		formAt: #client_id put: client identifier;
		formAt: #client_secret put: client secret;
		formAt: #scope put: aScope;
		formAt: #username put: aUsername;
		formAt: #password put: aPassword;
		yourself.

	response := httpClient
		post;
		response.

	^ response isSuccess
		ifTrue: [ self accessTokenFrom: response ]
		ifFalse: [ InvalidGrant new tag: response; signal ]