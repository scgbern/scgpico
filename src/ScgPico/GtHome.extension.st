Extension { #name : #GtHome }

{ #category : #'*ScgPico' }
GtHome >> getScgPicoSection [
	<gtHomeSection>
	^ GtHomeStartPageSection new 
		title: 'SCG Pico';
		description: 'SCG Pico Overview';
		databaseName: 'SCG Pico';
		startPageName: 'SCG Pico Overview';
		priority: 8
]
