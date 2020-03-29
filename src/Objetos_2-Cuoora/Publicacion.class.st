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

{ #category : #accessing }
Publicacion >> autor [
	^autor
]

{ #category : #'as yet unclassified' }
Publicacion >> diferenciaLikes [
	^ (likes size - dislikes size).
]

{ #category : #initialization }
Publicacion >> initConAutor: unUsuario [
	autor := unUsuario.
	fechaYHora := DateAndTime now.
]

{ #category : #'as yet unclassified' }
Publicacion >> puntaje [
	^self subclassResponsibility.
]

{ #category : #'as yet unclassified' }
Publicacion >> registrarDislike [
	"falta implementar..."
]

{ #category : #'as yet unclassified' }
Publicacion >> registrarLike [
	"falta implementar..."
]
