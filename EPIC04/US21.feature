Feature: Acceso a la calificación

  Scenario Outline: Pago del contrato
    Given que el usuario se encuentra en la página de Pago
    And en la página de un contrato específico
    When el usuario presiona el botón “Pagar”
    And el botón “Eliminar”
    Then el sistema redirige al usuario a la página de calificación
    Examples:
      | contrato_id |
      | 12345       |
      | 67890       |

  Scenario Outline: Calificación exitosa de culminación de contrato
    Given que el sistema redirige al usuario a la página de calificación
    And muestra las calificaciones y sus campos de comentarios correspondientes
    And muestra al final el botón “Enviar”
    When el usuario completa los campos
    And presiona el botón
    Then el sistema registra la calificación
    Examples:
      | calificacion | comentario                  |
      | 5            | "Servicio excelente"        |
      | 4            | "Muy buen servicio"         |
      | 3            | "Servicio aceptable"        |

  Scenario Outline: Calificación exitosa de cancelación de contrato
    Given que el sistema redirige al usuario a la página de calificación
    And muestra los campos de “Razón” y “Motivo”
    And muestra al final el botón “Enviar”
    When el usuario completa los campos
    And presiona el botón
    Then el sistema registra la calificación
    Examples:
      | razon           | motivo                |
      | "Cancelación"   | "Cambios en el plan"  |
      | "Finalización"  | "Contratista no adecuado" |

