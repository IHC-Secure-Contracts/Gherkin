Feature: Añadir un documento

  Scenario: Visualización de registrar documento
    Given el usuario se encuentra en la "página de un <contrato específico>"
    And el sistema muestra un botón "Add" en la parte superior derecha de la sección de documentos
    When el usuario presiona el botón
    Then el sistema muestra los campos de título, descripción, tipo de documento
    And una "sección para agregar el archivo"
    
  Examples: Contrato a manipular
    | contrato_especifico |
    | "Contrato A"        |
    | "Contrato B"        |
    
  Scenario: Carga exitosa de un documento
    Given el sistema muestra los "campos de título, descripción, tipo de documento"
    And una "sección para agregar el archivo"
    And muestra un botón "Guardar" al final de la página
    When el usuario llena los <campos>
    And agrega el archivo adjunto en formato PDF
    And presiona el botón
    Then el sistema verifica que todos los campos estén completos y que el formato y tamaño del archivo esté correcto
    And muestra un "mensaje de confirmación"

  Examples: Campos asociado a un documento
    | titulo       | descripcion      | tipo_documento | archivo       |
    | "Documento A" | "Descripción A" | "Tipo A"       | "archivo_a.pdf" |
    | "Documento B" | "Descripción B" | "Tipo B"       | "archivo_b.pdf" |

  Scenario: Fallo al cargar un archivo
    Given el usuario intenta subir un <archivo no compatible> o <archivo demasiado grande>
    When el usuario intenta cargar el archivo
    Then el sistema muestra un "mensaje de error"

  Examples: archivo no compatibles
    | archivo                |
    | "archivo_invalido1.txt" |
    | "archivo_invalido2.txt" |
    | "archivo_invalido3.txt" |

  Examples: archivos demasiado grandes
    | archivo                |
    | "archivo_grande1.pdf"  |
    | "archivo_grande2.pdf"  |
    | "archivo_grande3.pdf"  |
