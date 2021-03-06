issuing access token
issueAccessTokenUsing: aHttpClient afterBeingRedirectedTo: aRedirectUri

	| code redirectUri |

	code := aRedirectUri queryAt: #code.
	redirectUri := client redirectUri printString.

	^ client
		accessTokenUsing: aHttpClient
		applying:
			(AddFormFieldCommand named: #grant_type pairedTo: self grantType)
				+ (AddFormFieldCommand named: #code pairedTo: code)
				+ (AddFormFieldCommand named: #redirect_uri pairedTo: redirectUri)