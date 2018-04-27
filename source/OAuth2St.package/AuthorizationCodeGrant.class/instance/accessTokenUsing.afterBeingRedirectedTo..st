issuing access token
accessTokenUsing: aHttpClient afterBeingRedirectedTo: aRedirectUri

	| code redirectUri |

	self halt.

	code := aRedirectUri queryFields at: #code.
	redirectUri := client redirectUri printString.

	^ client
		accessTokenUsing: aHttpClient
		applying:
			(AddFormFieldCommand named: #grant_type pairedTo: self grantType)
				+ (AddFormFieldCommand named: #code pairedTo: code)
				+ (AddFormFieldCommand named: #redirect_uri pairedTo: redirectUri)