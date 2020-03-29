Class {
	#name : #Publicacion,
	#superclass : #Object,
	#instVars : [
		'fechaYHora',
		'autor',
		'likes',
		'dislikes'
	],
	#category : #'Objetos_2-Cuoora'
}

{ #category : #initialization }
Publicacion >> initConAutor: unUsuario [
	autor := unUsuario.
	fechaYHora := DateAndTime now.
]

{ #category : #'as yet unclassified' }
Publicacion >> puntaje [
	^self subclassResponsibility.
]
