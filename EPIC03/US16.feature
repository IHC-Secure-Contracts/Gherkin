Feature: Creación de contrato

Scenario: Visualización de búsqueda por comprador
  Given que el vendedor se encuentra en el "MenuBar".
  And el sistema muestra la opción de "Crear contrato".
  When el vendedor selecciona la opción "Crear contrato".
  Then el sistema muestra el campo para ingresar el <DNI> del comprador.

  Examples: Campo DNI
  | DNI      |
  | 12345678 |
  | 87654321 |

Scenario: Búsqueda exitosa de comprador
  Given que el vendedor llena el campo con el <DNI> del comprador.
  When el vendedor presione enter.
  Then el sistema valida que el <DNI> es válido.
  And muestra una tarjeta con el <nombre completo> del comprador y <correo>.
  And también muestra un botón "Vincular" debajo de la información del comprador.

  Examples: Comprador válido
  | DNI        | Nombre Completo       | Correo                |
  | 12345678   | Juan Pérez Rodríguez  | juan.perez@mail.com   |
  | 87654321   | María Gómez Sánchez   | maria.gomez@mail.com  |

Scenario: Búsqueda inválida de comprador
  Given que el vendedor llena el campo con el <DNI> del comprador.
  When el vendedor presione enter.
  And el sistema no encuentra el <DNI>.
  Then el sistema muestra un <mensaje de error> de inexistencia de tal comprador.

  Examples: Comprador inválido
  | DNI        |
  | 4620307P   |
  | 7294962H   |

  Examples: Mensaje
  | Mensaje de error                                 |
  | No se pudo enviar la solicitud. Intenta de nuevo |

Scenario: Solicitud de vinculación exitosa
  Given que el sistema muestra un botón "Vincular" debajo de la información del comprador.
  When el vendedor presione el botón.
  Then el sistema envía la solicitud de creación de contrato al comprador respectivo.
  And se muestra un <mensaje de confirmación> al vendedor.

  Examples: Mensaje
  | Mensaje de confirmacion             |
  | Tu solicitud se envio correctamente |
