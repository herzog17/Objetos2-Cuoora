Class {
	#name : #Pregunta,
	#superclass : #Publicacion,
	#instVars : [
		'titulo',
		'descripcion',
		'respuestas',
		'topicosAsociados'
	],
	#category : #'Objetos_2-Cuoora'
}

{ #category : #constructor }
Pregunta class >> conTitulo: unTitulo descripcion: unaDescripcion topicosAsociados: unaColeccionDeTopicos autor: unUsuario [
	^self new initConTitulo: unTitulo descripcion: unaDescripcion  topicosAsociados: unaColeccionDeTopicos  autor: unUsuario.
]

{ #category : #initialization }
Pregunta >> initConTitulo: unTitulo descripcion: unaDescripcion topicosAsociados: unaColeccionDeTopicos autor: unUsuario [
	titulo:= unTitulo.
	descripcion := unaDescripcion.
	topicosAsociados := unaColeccionDeTopicos.
	respuestas := OrderedCollection new.
	self initConAutor: unUsuario.
]
