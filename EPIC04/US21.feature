Feature: Acceso a la calificación

  Scenario Outline: Pago del contrato
    Given que el usuario se encuentra en la "página de Pago"
    And en la página de un <contrato> específico
    When el usuario presiona el botón "Pagar"
    And el botón "Eliminar"
    Then el sistema redirige al usuario a la página de "calificación"
    Examples: contrato
      |Contrato de pago                   |
      |Contrato venta                     |
      |Contrato de prestación de servicios|

  Scenario Outline: Calificación exitosa de culminación de contrato
    Given que el sistema redirige al usuario a la "página de calificación"
    And muestra la <calificacion> y sus campos de <comentario> correspondientes
    And muestra al final el botón "Enviar"
    When el usuario completa los campos
    And presiona el botón "Enviar"
    Then el sistema registra la calificación
    
    Examples: Calificaciones
      | calificacion |
      | 5            |
      | 4            |
      | 3            |
      
    Examples: Comentarios
      | comentario                  |
      | "Servicio excelente"        |
      | "Muy buen servicio"         |
      | "Servicio aceptable"        |
      
  Scenario Outline: Calificación exitosa de cancelación de contrato
    Given que el sistema redirige al usuario a la "página de calificación"
    And muestra los campos de <razon> y <motivo>
    And muestra al final el botón "Enviar"
    When el usuario completa los campos
    And presiona el botón "Enviar"
    Then el sistema registra la calificación
    
    Examples: Razones
      | razon           |
      | "Cancelación"   |
      | "Finalización"  |
      
    Examples: Motivos
      | motivo                |
      | "Cambios en el plan"  |
      | "Contratista no adecuado" |
