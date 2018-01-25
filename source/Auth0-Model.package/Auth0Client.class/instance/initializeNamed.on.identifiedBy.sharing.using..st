initialize-release
initializeNamed: aName on: aHostname identifiedBy: anIdentifier sharing: aSecret using: aHTTPClientProvider

	name := aName.
	hostname := aHostname.
	identifier := anIdentifier.
	secret := aSecret.
	httpClientProvider := aHTTPClientProvider