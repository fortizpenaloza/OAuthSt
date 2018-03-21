as yet unclassified
performOn: aHttpClient 
	
	aHttpClient 
		beOneShot;
		url: client tokenURL;
		formAt: #grant_type put: self grantType;
		formAt: #client_id put: client identifier;
		formAt: #client_secret put: client secret;
		formAt: #scope put: scope;
		formAt: #username put: username;
		formAt: #password put: password;
		yourself. 
		