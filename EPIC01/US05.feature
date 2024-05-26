Feature: Modificación de información

Scenario: Visualización de edición de perfil
    Given que el usuario está en la página "Perfil".
    And el sistema muestra un icono de "editar" ubicado en la parte superior derecha.
    When el usuario selecciona el icono.
    Then el sistema muestra la información actual del usuario que se puede editar.
    And muestra al final de la página el botón "Guardar".

Scenario Outline: Actualización exitosa de información de perfil
    Given que el sistema muestra la información actual del usuario que se puede editar.
    And muestra al final de la página el botón "Guardar".
    When el usuario modifica su información, incluyendo <nombre>, <correo electronico>, <telefono>, <genero>, <fecha de nacimiento>, <direccion>.
    And luego hace click en el botón.
    And el sistema verifica que todo esté valido.
    Then el sistema muestra un <mensaje de confirmacion>.

Examples: informacion
    | nombre  | correo electrónico      | teléfono   | género    | fecha de nacimiento | dirección         |
    | Juan    | juan@example.com        | 555-1234   | Masculino | 1990-01-01          | Calle Falsa 123   |
    | Ana     | ana@example.com         | 555-5678   | Femenino  | 1985-05-05          | Avenida Real 456  |

Examples: Mensaje
    | mensaje de confirmacion              |
    | Informacion actualizada exitosamente |

Scenario Outline: Actualización fallida de información de perfil
    Given que el sistema muestra la información actual del usuario que se puede editar.
    And muestra al final de la página el botón "Guardar".
    When el usuario ingresa datos no válidos como <nombre>, <correo electronico>, <telefono>, <genero>, <fecha de nacimiento>, <direccion>.
    And luego hace click en el botón.
    And el sistema verifica que la validez de los nuevos datos viola las políticas de la plataforma.
    Then el sistema muestra un <mensaje de error>.
    And no actualiza la información del usuario.

Examples: informacion
    | nombre  | correo electrónico      | teléfono       | género    | fecha de nacimiento | dirección         |
    | Juan    | no es un correo         | 555-1234       | Masculino | 1990-01-01          | Calle Falsa 123   |
    | Ana     | ana@example.com         | no es teléfono | Femenino  | 1985-05-05          | Avenida Real 456  |

Examples: Mensaje
    | mensaje de error                                      |
    | Actualizacion de perfil fallida, inténtalo nuevamente |