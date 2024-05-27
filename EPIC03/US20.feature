Feature: Confirmación de finalización de contrato

Scenario: Visualización de confirmación de contrato
  Given que el vendedor se encuentra en la página de un <contrato> específico.
  And el sistema muestra el botón "Confirmar" en la parte inferior derecha de la página.
  When el vendedor presione el botón.
  Then el sistema lo redirige a la página de "pagos".
  And muestra las <formas de pago>.
  And también los campos de <Titular de tarjeta>, <Número de tarjeta>, <Fecha de vencimiento> y <CVV>.
  And al final muestra el botón "Pagar".

  Examples: Contratos
  | Contrato                                 |
  | Contrato de venta de casa                |
  | Contrato de venta de oficina             |
  | Contrato de venta de departamento        |
  
  Examples: Formas de Pago
  | Métodos de Pago  |
  | Visa             |
  | Mastercard       |
  | American Express |

    Examples: Datos del titular del vendedor
  | Titular de tarjeta    | Número de tarjeta     | Fecha de vencimiento | CVV |
  | Juan Pérez Rodríguez  | 4111 1111 1111 1111   | 12/25                | 123 |
  | María Gómez Sánchez   | 5500 0000 0000 0004   | 11/24                | 456 |

Scenario: Pago exitoso
  Given que el vendedor se encuentra en la página de "pagos".
  And el sistema muestra las <formas de pago>.
  And también los campos de <Titular de tarjeta>, <Número de tarjeta>, <Fecha de vencimiento> y <CVV>.
  And al final muestra el botón "Pagar".
  When el vendedor selecciona la <forma de pago>.
  And completa los campos.
  And selecciona el botón "Pagar".
  Then el sistema valida las credenciales.
  And muestra un <mensaje de confirmación>.

  Examples: Formas de Pago
  | Métodos de Pago  |
  | Visa             |
  | Mastercard       |
  | American Express |
  
  Examples: Datos del titular del vendedor
  | Titular de tarjeta    | Número de tarjeta     | Fecha de vencimiento | CVV |
  | Juan Pérez Rodríguez  | 4111 1111 1111 1111   | 12/25                | 123 |
  | María Gómez Sánchez   | 5500 0000 0000 0004   | 11/24                | 456 |

  Examples: Mensaje
  | Mensaje de confirmación      |
  | Tu pago se realizó con éxito |

Scenario: Pago fallido
  Given que el vendedor se encuentra en la página de "pagos".
  And el sistema muestra las <formas de pago>.
  And también los campos de <Titular de tarjeta>, <Número de tarjeta>, <Fecha de vencimiento> y <CVV>.
  And al final muestra el botón "Pagar".
  When el vendedor selecciona la <forma de pago>.
  And completa los campos.
  And selecciona el botón "Pagar".
  Then el sistema valida insuficiente saldo.
  And muestra un <mensaje de error>.

  Examples: Formas de Pago
  | Métodos de Pago  |
  | Visa             |
  | Mastercard       |
  | American Express |
  
  Examples: Datos del titular del vendedor
  | Titular de tarjeta    | Número de tarjeta     | Fecha de vencimiento | CVV |
  | Juan Pérez Rodríguez  | 4111 1111 1111 1111   | 12/25                | 123 |
  | María Gómez Sánchez   | 5500 0000 0000 0004   | 11/24                | 456 |

  Examples: Mensaje
  | Mensaje de error                        |
  | No se procesó tu pago. Intenta de nuevo |
