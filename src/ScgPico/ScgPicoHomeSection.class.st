Class {
	#name : #ScgPicoHomeSection,
	#superclass : #GtHomeSection,
	#category : #'ScgPico-Sections'
}

{ #category : #accessing }
ScgPicoHomeSection >> create [
	| sectionContainer cardsContainer |
	sectionContainer := self newSectionContainer.
	sectionContainer addChild: (self newSectionTitle: 'SCG Pico').
	cardsContainer := self newCardsContainer.
	cardsContainer
		addChild: (self
				newLepiterPageCardForPageNamed: 'SCG Pico Overview'
				inDatabaseNamed: 'SCG Pico'
				withTitle: 'SCG Pico Overview'
				andDescription: 'SCG Pico Overview').

	sectionContainer addChild: cardsContainer.
	^ sectionContainer
]
