"
I am a sidebar to a number of web pages in te same folder or folder hierarchy. I do not have a title.
"
Class {
	#name : #SideBar,
	#superclass : #PicoPage,
	#category : #'ScgPico-Model'
}

{ #category : #accessing }
SideBar >> isSidebar [
	^ true
]

{ #category : #accessing }
SideBar >> title [
	^ '(sidebar)'
]
