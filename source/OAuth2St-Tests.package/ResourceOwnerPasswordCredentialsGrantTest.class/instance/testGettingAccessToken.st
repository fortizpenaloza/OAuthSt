tests
testGettingAccessToken

	| authorizationGrant token httpClient |

	authorizationGrant := ResourceOwnerPasswordCredentialsGrant
		on: client
		using: 'fran@ortizpenaloza.com.ar'
		and: 'sQ4-Hto-HMe-gmt'
		configuredBy: [:grant | grant scope: 'profile' ].

	httpClient := self httpClient.
	token := authorizationGrant issueAccessTokenUsing: httpClient.

	self
		assert: httpClient request entity contentType equals: ZnMimeType applicationFormUrlEncoded;
		assert: ( httpClient request contents at: #grant_type ) equals: authorizationGrant grantType.
	self
		assert: token accessToken notEmpty;
		assert: token tokenType equals: 'Bearer';
		assert: token expiresIn equals: 86400;
		assert: token scope equals: '';
		deny: token hasRefreshToken