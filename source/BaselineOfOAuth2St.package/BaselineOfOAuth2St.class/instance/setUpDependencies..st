baselines
setUpDependencies: spec

	spec
		baseline: 'Superluminal'
		with: [ spec
				repository: 'github://ba-st/Superluminal:release-candidate/source';
				loads: #('Deployment') ].
			
	spec
		baseline: 'NeoJSON'
		with: [ spec
				repository: 'github://svenvc/NeoJSON:master/repository';
				loads: #('core') ].

	spec
		baseline: 'TestHTTPClient'
		with: [ spec
				repository: 'github://fortizpenaloza/Test-HTTP-Client:master/source';
				loads: #('Development') ]