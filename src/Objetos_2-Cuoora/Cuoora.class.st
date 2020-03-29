Class {
	#name : #Cuoora,
	#superclass : #Object,
	#instVars : [
		'usuarios',
		'topicos'
	],
	#category : #'Objetos_2-Cuoora'
}

{ #category : #accessing }
Cuoora >> agregarTopicoConNombre: unNombre descripcion: unaDescripcion [ 
	topicos add: (Topico conNombre: unNombre descripcion: unaDescripcion).
]

{ #category : #initialization }
Cuoora >> initialize [ 
	topicos := OrderedCollection new.
	usuarios := OrderedCollection new.
]

{ #category : #accessing }
Cuoora >> obtenerPreguntasConTopico: unTopico [
	^ usuarios flatCollect: [ :each | each preguntasConTopico: unTopico ].
]

{ #category : #accessing }
Cuoora >> preguntasRelevantesParaElUsuario: unUsuario [
"no se si esto funciona o si se puede mejorar"
	|relevantes|
	relevantes := usuarios flatCollect: [ :each | each preguntasDeUsuariosQueSigue ].
	^ relevantes flatCollectAsSet: (unUsuario topicosDeInteres do: [ :each | self obtenerPreguntasConTopico: each ]).
	
]

{ #category : #accessing }
Cuoora >> registrarUsuarioConNombre: unNombre password: unPassword [
	usuarios add: (Usuario conNombre: unNombre password: unPassword).
]
