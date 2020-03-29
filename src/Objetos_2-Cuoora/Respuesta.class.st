Class {
	#name : #Respuesta,
	#superclass : #Publicacion,
	#instVars : [
		'texto'
	],
	#category : #'Objetos_2-Cuoora'
}

{ #category : #constructor }
Respuesta class >> conTexto: unTexto autor: unUsuario [
	^ self new initConTexto: unTexto autor: unUsuario. 
]

{ #category : #deleting }
Respuesta >> eliminate [ 
	autor borrarRespuesta: self.
]

{ #category : #initialization }
Respuesta >> initConTexto: unTexto autor: unUsuario [
	texto := unTexto.
	self initConAutor: unUsuario.
]
