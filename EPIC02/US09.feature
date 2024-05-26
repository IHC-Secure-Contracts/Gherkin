Feature: Acceso a documentos contractuales


Scenario Outline: Acceso a la página “Mis contratos”
Dado que el usuario se encuentra en la página principal de “Contratos”
Cuando el usuario selecciona un contrato específico de la lista
Entonces el sistema muestra todos los documentos asociados a ese contrato en una nueva página
Y el usuario puede visualizar y analizar cada documento

Scenario Outline: Fallo al acceder a los documentos contractuales
Dado que el usuario intenta acceder a los documentos  de un contrato específico
Cuando el sistema detecta un error en la carga de los documentos
Entonces el sistema informa al usuario del error con un <mensaje> adecuado


Examples: Mensaje
  |                  Mensaje Error                         |
  | Tu documento no se pudo descargar. Intentalo de nuevo. |
