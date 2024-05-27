Feature: Solicitud de cancelación de contrato

Scenario: Solicitud de cancelación exitosa
  Given que ambos usuarios, <comprador> y <vendedor>, se encuentran en la página de un <contrato> específico.
  And el sistema muestra al final de la página el botón "Eliminar".
  When ambos usuarios presionan el botón.
  Then el sistema elimina el contrato
  And muestra un <mensaje de confirmación> basándose en el consentimiento de ambas partes.

  Examples: Contratos
  | Contrato                           | Comprador             | Vendedor              |
  | Contrato de venta de Departamento  | Juan Pérez Rodríguez  | María Gómez Sánchez   |
  | Contrato de venta de Casa          | Carlos López Martínez | Ana Fernández García  |

  Examples: Mensaje
  | Mensaje de confirmación de eliminación |
  | Tu contrato se eliminó correctamente   |

Scenario: Solicitud de cancelación con contraparte sin respuesta
  Given que el usuario ha solicitado la cancelación de un contrato.
  When la contraparte no responde dentro del <plazo establecido>.
  Then el sistema informa al usuario solicitante y puede tomar medidas adicionales según las políticas.

  Examples: Plazos
  | Plazo establecido |
  | 24 horas          |
  | 48 horas          |
  | 72 horas          |

Scenario: Solicitud de cancelación denegada
  Given que el usuario ha solicitado la cancelación.
  When la contraparte rechaza la solicitud de cancelación.
  Then el sistema informa al usuario y proporciona <opciones> para la mediación o resolución de conflictos.

  Examples: Opciones de resolución
  | Opción de resolución     |
  | Mediación                |
  | Resolución de conflictos |
