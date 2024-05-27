Feature: Acceso a documentos contractuales


Scenario Outline: Acceso a la página “Mis contratos”
Given que el usuario se encuentra en la página principal de “Contratos”
When el usuario selecciona un contrato específico de la lista
Then el sistema muestra todos los documentos asociados a ese contrato en una nueva página
And el usuario puede visualizar y analizar cada documento

Scenario Outline: Fallo al acceder a los documentos contractuales
Given que el usuario intenta acceder a los documentos  de un contrato específico
When el sistema detecta un error en la carga de los documentos
Then el sistema informa al usuario del error con un <mensaje> adecuado


Examples: Mensaje
  |                  Mensaje Error                         |
  | Tu documento no se pudo descargar. Intentalo de nuevo. |
