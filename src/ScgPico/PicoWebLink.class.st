Class {
	#name : #PicoWebLink,
	#superclass : #MarkdownWebLink,
	#category : #'ScgPico-ModelRedux'
}

{ #category : #accessing }
PicoWebLink >> path: aPath [
	path := self rewritePath: aPath
]

{ #category : #accessing }
PicoWebLink >> rewritePath: aPath [
	^ (aPath copyReplaceAll: '%base_url%/' with: '')
		copyReplaceAll: '%assets_url%/'
		with: 'assets/download/'
]
