baselines
setUpDependencies: spec

	spec
		baseline: 'Nap'
		with: [ spec
				repository: 'github://fortizpenaloza/Nap:master/source';
				loads: #('default') ].

	spec
		baseline: 'TestHTTPClient'
		with: [ spec
				repository: 'github://fortizpenaloza/Test-HTTP-Client:master/source';
				loads: #('De') ]