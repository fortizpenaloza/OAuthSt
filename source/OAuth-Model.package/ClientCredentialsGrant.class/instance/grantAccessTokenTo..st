grant access token
grantAccessTokenTo: anAudience

	| content httpClient response |

	content := Dictionary new
		at: #grant_type put: self grantType;
		at: #client_id put: client identifier;
		at: #client_secret put: client secret;
		at: #audience put: anAudience;
		yourself.

	httpClient := client httpClient
		beOneShot;
		url: client tokenURL;
		entity: (ZnStringEntity json: (STONJSON  toStringPretty: content));
		yourself.

	response := httpClient
		post;
		response.

	^ response isSuccess
		ifTrue: [ self accessTokenFrom: response ]
		ifFalse: [InvalidGrant new tag: response; signal ]