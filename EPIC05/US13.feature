Feature: Descarga de documentos

  Scenario: Descarga exitosa de documentos en PDF
    Given el usuario se encuentra en la "sección de un documento en particular"
    And el sistema muestra al final de la página un botón "Descargar"
    When el usuario presiona el botón
    Then el sistema debe habilitar la descarga del documento en formato PDF
    And guardar el <documento> en el dispositivo local sin problemas

  Examples: Documento a descargar
    |  documento        |
    | "Documento A"     | 
    | "Documento B"     |

  Scenario: Fallo en la descarga de documento
    Given el usuario intenta descargar un <documento>
    When el sistema encuentra un error que impide la descarga
    Then el sistema debe mostrar un "mensaje de error"

  Examples: Documento a descargar
    | documento_intentado |
    | "Documento A"       | 
    | "Documento B"       | 
