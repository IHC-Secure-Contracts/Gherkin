Feature: Visualización de fechas de inicio y fin de un documento contractual

Scenario: Visualización de fechas de inicio y fin
  Dado que el sistema muestra los documentos en la página de un contrato.
  Cuando el usuario selecciona un <documento> en particular.
  Entonces el sistema muestra en la parte inferior las <fechas de registro>
  Y <fechas de validación> en un lateral.

Examples: Fechas
  | registro      | validación   |
  | 2024-01-15    | 2024-01-20   |
  | 2024-02-01    | 2024-02-10   |
  | 2024-03-05    | 2024-03-12   |
