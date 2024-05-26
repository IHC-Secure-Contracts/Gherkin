Feature: Visualizacon de documentos en pdf

  Scenario: Visualización exitosa de documentos en PDF
    Given el sistema muestra los documentos en la página de un contrato
    When el usuario selecciona un documento en la lista
    Then el sistema muestra el documento en formato PDF
    And permite hacer zoom
    And permite desplazarse por las páginas

  Examples:
    | pagina_contrato | documento_seleccionado |
    | "Contrato A"    | "Documento 1"          |
    | "Contrato B"    | "Documento 2"          |

  Scenario: Desplazamiento en el PDF
    Given el sistema muestra el documento en formato PDF
    When el usuario hace scroll al documento
    Then el sistema mueve las páginas del documento según la dirección del scroll

  Examples:
    | documento_mostrado |
    | "Documento 1"      |
    | "Documento 2"      |

  Scenario: Pantalla completa en el PDF
    Given el sistema muestra el documento en formato PDF
    And muestra en la esquina superior derecha un icono de expansión
    When el usuario presiona el icono
    Then el sistema muestra el documento en pantalla completa

  Examples:
    | documento_mostrado |
    | "Documento 1"      |
    | "Documento 2"      |

  Scenario: Fallo al cargar el documento
    Given he seleccionado un documento para visualizar
    When el sistema no logra cargar el documento en formato PDF
    Then el sistema debe mostrar un mensaje de error

  Examples:
    | documento_seleccionado |
    | "Documento 1"          |
    | "Documento 2"          |
