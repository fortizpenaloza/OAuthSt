issuing access token
issueAccessTokenUsing: aHttpClient

	^ client
		accessTokenUsing: aHttpClient
		applying:
			(AddFormFieldCommand named: #grant_type pairedTo: self grantType)
				+ (AddFormFieldCommand named: #scope pairedTo: scope)
				+ (AddFormFieldCommand named: #username pairedTo: username)
				+ (AddFormFieldCommand named: #password pairedTo: password)