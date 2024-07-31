Class {
	#name : #ScgPicoHomeSection,
	#superclass : #GtHomeMultiCardSection,
	#category : #'ScgPico-Sections'
}

{ #category : #accessing }
ScgPicoHomeSection >> defaultPriority [
	^ 5
]

{ #category : #accessing }
ScgPicoHomeSection >> scgPicoCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'SCG Pico';
		description: 'SCG Pico website';
		databaseName: 'SCG Pico';
		pageName: 'SCG Pico Overview';
		priority: 10;
		assertInvariant;
		yourself
]

{ #category : #accessing }
ScgPicoHomeSection >> sectionTitle [
	^ 'SCG Pico'
]
