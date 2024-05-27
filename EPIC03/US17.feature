Feature: Solicitud de creación de contrato

Scenario: Visualización de solicitudes
  Given que el comprador se encuentra en el "MenuBar".
  And el sistema muestra la opción de "Solicitudes".
  When el comprador presiona la opción.
  Then el sistema le muestra todas las solicitudes de vinculación para la creación de un <contrato>.
  And muestra en cada solicitud dos opciones en botones "Aceptar" y "Rechazar".

  Examples: Solicitudes
  | Contrato                          |
  | Contrato de venta de Departamento |
  | Contrato de venta de Casa         |

Scenario: Aceptar solicitud
  Given que el sistema muestra las dos opciones en botones "Aceptar" y "Rechazar" en cada solicitud.
  When el comprador presiona "Aceptar".
  Then el sistema crea el contrato y se agrega en la sección "mis contratos" de ambas partes involucradas.
  And se muestra un <mensaje de confirmación> al comprador.

  Examples: Mensaje
  | Mensaje de confirmación           |
  | El contrato ha sido creado exitosamente |

Scenario: Rechazar solicitud
  Given que el sistema muestra las dos opciones en botones "Aceptar" y "Rechazar" en cada solicitud.
  When el comprador presiona "Rechazar".
  Then el sistema no procede con la creación del contrato.
  And se muestra un <mensaje de rechazo> al comprador.

  Examples: Mensaje
  | Mensaje de rechazo                           |
  | La solicitud ha sido rechazada correctamente |
