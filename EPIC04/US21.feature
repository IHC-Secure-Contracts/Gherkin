Feature: Acceso a la calificación

  Scenario Outline: Pago del contrato
    Given que el usuario se encuentra en la "página de Pago"
    And en la página de un <contrato> específico
    When el usuario presiona el botón “Pagar”
    And el botón “Eliminar”
    Then el sistema redirige al usuario a la página de calificación
    Examples: contrato
      |Contrato de pago|
      |Contrato venta|
      |Contrato de prestación de servicios|

  Scenario Outline: Calificación exitosa de culminación de contrato
    Given que el sistema redirige al usuario a la "página de calificación"
    And muestra la <calificacion> y sus campos de <comentario> correspondientes
    And muestra al final el botón “Enviar”
    When el usuario completa los campos
    And presiona el botón "Enviar"
    Then el sistema registra la calificación
    Examples:
      | calificacion | comentario                  |
      | 5            | "Servicio excelente"        |
      | 4            | "Muy buen servicio"         |
      | 3            | "Servicio aceptable"        |

  Scenario Outline: Calificación exitosa de cancelación de contrato
    Given que el sistema redirige al usuario a la "página de calificación"
    And muestra los campos de <Razón> y <Motivo>
    And muestra al final el botón “Enviar”
    When el usuario completa los campos
    And presiona el botón "Enviar"
    Then el sistema registra la calificación
    Examples:
      | razon           | motivo                |
      | "Cancelación"   | "Cambios en el plan"  |
      | "Finalización"  | "Contratista no adecuado" |

