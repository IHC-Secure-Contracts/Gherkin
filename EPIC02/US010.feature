Feature: Acceso a  un documento  específico de un contrato


Scenario Outline: Acceso a un documento específico
Given que el usuario se encuentra en un contrato específico.
And el sistema muestra todos los documentos en formato tarjetas.
When el usuario selecciona un <documento> específico.
Then el sistema le muestra en una nueva página el documento seleccionado.


Examples: Documento
    |            nombre             ||      imagen        |
    |          Propiedad            ||   propiedad.jpg    |
    |         Acreditacion          ||  acreditacion.jpg  |  
    

Scenario Outline: Fallo al acceder a un documento contractual
Dado que el usuario intenta acceder a un documento  en particular.
Cuando el sistema detecta un error en la carga del documento.
Entonces el sistema informa al usuario del error con un <mensaje>.


Examples: Mensaje
  |                  Mensaje Error                         |
  | Tu documento no se pudo descargar. Intentalo de nuevo. |
    
