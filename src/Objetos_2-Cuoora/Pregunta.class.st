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

{ #category : #adding }
Pregunta >> agregarRespuesta: unaRespuesta [
	respuestas add: unaRespuesta.
]

{ #category : #deleting }
Pregunta >> borrarRespuestas [
	respuestas do: [ :each | each eliminate ].
]

{ #category : #accessing }
Pregunta >> incluyeTopico: unTopico [
	^ topicosAsociados includes: unTopico.
]

{ #category : #initialization }
Pregunta >> initConTitulo: unTitulo descripcion: unaDescripcion topicosAsociados: unaColeccionDeTopicos autor: unUsuario [
	titulo:= unTitulo.
	descripcion := unaDescripcion.
	topicosAsociados := unaColeccionDeTopicos.
	respuestas := OrderedCollection new.
	self initConAutor: unUsuario.
]

{ #category : #'as yet unclassified' }
Pregunta >> puntaje [
	^ 20 + self diferenciaLikes.
]

{ #category : #accessing }
Pregunta >> respuestas [
	^ respuestas asSortedCollection: [ :unaRta :otraRta | unaRta diferenciaLikes > otraRta diferenciaLikes ].
]
