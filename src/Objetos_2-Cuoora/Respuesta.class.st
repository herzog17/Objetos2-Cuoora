Class {
	#name : #Respuesta,
	#superclass : #Publicacion,
	#instVars : [
		'texto',
		'pregunta'
	],
	#category : #'Objetos_2-Cuoora'
}

{ #category : #constructor }
Respuesta class >> conTexto: unTexto autor: unUsuario pregunta: unaPregunta [
	^ self new initConTexto: unTexto autor: unUsuario pregunta: unaPregunta. 
]

{ #category : #deleting }
Respuesta >> eliminate [ 
	autor borrarRespuesta: self.
]

{ #category : #accessing }
Respuesta >> esDistintoAutorQueLaPregunta [
	^ self autor ~= pregunta autor.
]

{ #category : #initialization }
Respuesta >> initConTexto: unTexto autor: unUsuario pregunta: unaPregunta [
	texto := unTexto.
	pregunta:= unaPregunta.
	self initConAutor: unUsuario.
]

{ #category : #'as yet unclassified' }
Respuesta >> puntaje [
	^ 50 + self diferenciaLikes.
]
