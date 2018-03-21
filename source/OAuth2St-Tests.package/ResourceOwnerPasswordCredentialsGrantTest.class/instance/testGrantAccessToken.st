tests
testGrantAccessToken

	| token client aUsername password authorizationGrant httpClient |
	
	
	httpClient := ZnClient new.

	client := OAuth2Client new.
	authorizationGrant := ResourceOwnerPasswordCredentialsGrant
		on: client
		scopedTo: 'scope'
		using: aUsername
		and: password.	".accessToken(executor);"

	token := authorizationGrant performOn: httpClient