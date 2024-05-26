Feature: Visualización de fechas de inicio y fin de un documento contractual

Scenario: Visualización de fechas de inicio y fin
  Given que el sistema muestra los documentos en la página de un contrato.
  When el usuario selecciona un <documento> en particular.
  Then el sistema muestra en la parte inferior las <fechas de registro>
  And <fechas de validación> en un lateral.

Examples: Documento
| Contrato de compraventa               |
| Certificado de gravamen               |
| Escritura pública                     |
| Informe de tasación                   |
| Aprobación de crédito hipotecario     |

Examples: Fechas
| Registro      | Validación   |
| 2024-01-15    | 2024-01-20   |
| 2024-02-01    | 2024-02-10   |
| 2024-03-05    | 2024-03-12   |
