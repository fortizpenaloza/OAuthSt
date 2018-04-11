as yet unclassified
sendHandlingErrors: aResourceOwnerPasswordCredentialsAccessTokenRequest

	| scope commands response |

	commands := (AddFormFieldCommand named: #grant_type pairedTo: nil) +
	(AddFormFieldCommand named: #scope pairedTo: nil) +
	(AddFormFieldCommand named: #username pairedTo: nil) +
	(AddFormFieldCommand named: #password pairedTo: nil) .
		
	commands applyOn: httpClient.

	"	aHttpClient
		url: authorizationServer tokenEndpoint;
		formAt: #client_id put: identifer;
		formAt: #client_secret put: secret"

	response := httpClient
		post;
		response.

	^ response isSuccess
		ifTrue: [ self accessTokenFrom: response ]
		ifFalse: [ InvalidGrant new
				tag: response;
				signal ]