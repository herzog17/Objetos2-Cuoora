Class {
	#name : #Usuario,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'password',
		'fechaCreacion',
		'usuariosQueSigue',
		'topicosDeInteres',
		'preguntas',
		'respuestas'
	],
	#category : #'Objetos_2-Cuoora'
}

{ #category : #constructor }
Usuario class >> conNombre: unNombre password: unPassword [
	^self new initConNombre:unNombre password: unPassword.
]

{ #category : #accessing }
Usuario >> agregarTopicoDeInteres: unTopico [
"capas habria que chequear que no lo agrege repetido con addIfNotPresent"
	topicosDeInteres add: unTopico.
]

{ #category : #accessing }
Usuario >> crearPreguntaConTitulo: unTitulo descripcion: unaDescripcion topicosAsociados: unaColeccionDeTopicos [ 
	preguntas add: (Pregunta conTitulo: unTitulo descripcion: unaDescripcion topicosAsociados: unaColeccionDeTopicos autor: self).
]

{ #category : #accessing }
Usuario >> crearRespuestaConTexto: unTexto paraPregunta: unaPregunta [
	|nuevaRta|
	respuestas add: (nuevaRta := (Respuesta conTexto: unTexto autor: self)).
	unaPregunta agregarRespuesta: nuevaRta.
]

{ #category : #initialization }
Usuario >> initConNombre: unNombre password: unPassword [
	nombre:=unNombre.
	password := unPassword.
	fechaCreacion := DateAndTime now.
	usuariosQueSigue := OrderedCollection new.
	preguntas:= OrderedCollection new.
	respuestas := OrderedCollection new.
	topicosDeInteres := OrderedCollection new.
]

{ #category : #accessing }
Usuario >> preguntas [ 
	^ preguntas.
]

{ #category : #accessing }
Usuario >> respuestas [
	^ respuestas.
]

{ #category : #accessing }
Usuario >> seguirA: otroUsuario [
"si ya seguia a ese usuario, no lo vuelve a agregar"
	usuariosQueSigue addIfNotPresent: otroUsuario.
]

{ #category : #accessing }
Usuario >> topicosDeInteres [
	^ topicosDeInteres.
]
