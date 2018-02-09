baselines
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'OAuth-Model';
				package: 'OAuth-Tests' with: [ spec requires: #('OAuth-Model' 'TestHTTPClient') ].
			spec
				group: 'Deployment' with: #('OAuth-Model');
				group: 'Development' with: #('OAuth-Tests');
				group: 'default' with: #('Deployment') ]