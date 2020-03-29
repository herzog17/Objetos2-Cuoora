Class {
	#name : #Respuesta,
	#superclass : #Publicacion,
	#instVars : [
		'texto'
	],
	#category : #'Objetos_2-Cuoora'
}

{ #category : #initialization }
Respuesta >> initConTexto: unTexto autor: unUsuario [
	texto := unTexto.
	self initConAutor: unUsuario
]
