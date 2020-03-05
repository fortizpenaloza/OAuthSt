tests
testGettingAccessToken

	| authorizationGrant token |

	authorizationGrant := AuthorizationCodeGrant on: client.

	token := authorizationGrant
		issueAccessTokenUsing: ZnClient new beOneShot
		afterBeingRedirectedTo: 'http://localhost:8080/sign-in?code=XYZ' asZnUrl.

	self
		assert: token accessToken equals: 'OMwvwW0OCjTqQTsliklaWAzpgvpTK-6X';
		assert: token tokenType equals: 'Bearer';
		assert: token expiresIn equals: 86400;
		deny: token hasRefreshToken