tests
testInstanceCreationAndAccessing

	| client |

	client := OAuth2Client
		registeredOn: authorizationServer
		as: '7Q7lAA9XzkyMGUhqGa9RC3GcNfObXCqW'
		sharing: 'fcZy-KVJvbT5DFEFfD8KEjLrPgu5dSDyJbAP7Z4gzBHRvFEqs3O_oq11kv7n3sH6'
		redirectingTo: 'http://localhost:8080/sign-in' asZnUrl. 

	self
		assert: client authorizationUrl printString
		equals:
			'https://willow-demo.auth0.com/authorize?redirect_uri=http://localhost:8080/sign-in&client_id=7Q7lAA9XzkyMGUhqGa9RC3GcNfObXCqW'