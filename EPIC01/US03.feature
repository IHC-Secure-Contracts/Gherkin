Feature: Firma Electrónica Avanzada

Scenario: Acceso a la firma electrónica
    Given que el usuario se encuentra en la pantalla de "registro".
    And el sistema muestra un botón "Registrar" abajo del label "Firma electrónica".
    When el usuario presiona el botón.
    Then el sistema abre una pantalla de la "Firma Electrónica".
    And muestra un apartado grande de dibujo
    And también muestra un botón "Seleccionar Archivo".
    And también muestra un botón de "Guardar" en la parte final.


Scenario Outline: Validación exitosa de firma electrónica con RENIEC
    Given que el usuario se encuentra en la pantalla de la "Firma Electrónica"
    And el sistema muestra un apartado grande de dibujo y un botón de "Seleccionar archivo"
    When el usuario dibuja su firma o ingresa los <archivos> adjuntos de las fotos de la firma
    And luego presiona el botón "Guardar"
    And el sistema establece una conexión con la Reniec.
    And valida la autenticidad de la firma electrónica.
    Then el sistema registra la firma dibujada o el <archivo> adjunto de la foto de la firma.
    And muestra un <mensaje de confirmacion>.

Examples: archivo
    | archivos        |
    | firma.jpg       |
    | photo12312.png  |

Examples: Mensaje
    | mensaje de confirmacion                                       |
    | Firma electrónica ha sido validada en el sistema de la Reniec |


Scenario Outline: Validación fallida de firma electrónica con RENIEC
    Given que el usuario se encuentra en la pantalla de la "Firma Electrónica".
    And el sistema muestra un apartado grande de dibujo y un botón de "Seleccionar archivo".
    When el usuario dibuja su firma o ingresa los <archivos> adjuntos de las fotos de la firma.
    And luego presiona el botón "Guardar".
    And el sistema establece una conexión con la Reniec.
    And no valida la autenticidad de la firma electrónica.
    Then el sistema muestra un <mensaje de error>.
    And el sistema permite al usuario reintentar el registro de la firma electronica.

Examples: archivo
    | archivos        |
    | archivo.pdf     |
    | corrompido.zip  |

Examples: Mensaje
    | mensaje de error                                  |
    | Firma electrónica rechazada, inténtalo nuevamente |