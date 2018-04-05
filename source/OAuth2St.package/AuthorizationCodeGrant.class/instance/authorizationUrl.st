accessing
authorizationUrl

"  if (mScope.isEmpty())
        {
            return mClient.authorizationUrl(new BasicOAuth2AuthorizationRequest(token, mState));
        }
        else
        {
            return mClient.authorizationUrl(new BasicOAuth2AuthorizationRequest(token, mScope, mState));
        }"

	^ client authorizationUrl
		queryAt: #scope add: scopes;
		queryAt: #response_type add: 'code';
		queryAt: #state add: 'xyz';
		yourself