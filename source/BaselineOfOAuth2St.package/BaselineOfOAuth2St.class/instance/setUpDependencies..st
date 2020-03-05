baselines
setUpDependencies: spec

	spec
		baseline: 'Superluminal'
		with: [ spec
				repository: 'github://ba-st/Superluminal:release-candidate/source';
				loads: #('Deployment') ].

	spec
		baseline: 'TestHTTPClient'
		with: [ spec
				repository: 'github://fortizpenaloza/Test-HTTP-Client:master/source';
				loads: #('Development') ]