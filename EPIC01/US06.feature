Feature: Restablecer contraseña

Scenario: Acceder a restablecer contraseña
    Given que el usuario se encuentra en la página de "inicio de sesión".
    When el usuario selecciona la opción "Restablecer contraseña".
    Then el sistema muestra una nueva pestaña de "restablecimiento de contraseña".
    And también muestra un campo de <correo>.
    And también un botón de "Confirmar".

Examples: Cuenta
    | correo             |
    | gsasf@correo.com   |
    | f13aa@hotmail.com  |


Scenario: Solicitud de verificación por correo
    Given que el sistema muestra una nueva pestaña de "restablecimiento de contraseña".
    And también muestra un campo de <correo>.
    And también un botón de "Confirmar".
    When el usuario completa el campo.
    And presiona el botón.
    Then el sistema le envía a su bandeja de entrada de su correo un <link> de validacion.

Examples: Cuenta
    | correo             |
    | gsasf@correo.com   |
    | f13aa@hotmail.com  |

Examples: Validacion
    | link               |
    | enlace123123.com   |
    | enlace143553.com   |


Scenario: Verificación exitosa de cuenta
    Given que el sistema le envía a su bandeja de entrada de su correo un <link> de validacion.
    Then el sistema actualiza la página de la plataforma automáticamente.
    And muestra los campos de <Nueva contrasena> y <Repite nueva contrasena>.
    And también el botón "Confirmar" ubicado al final.

Examples: enlace
    | link                    |
    | verificacion1412341.com |
    | verificacion4356451.com |

Examples: Cuenta
    | Nueva contrasena | Repite nueva contrasena |
    | 123456789        | 123456789               |
    | 123456789        | 123456789               |


Scenario: Verificación fallida de la cuenta
    Given que el sistema le envía a su bandeja de entrada de su correo un <link> de validacion.
    When el usuario no presiona en el <link> en un determinado <tiempo>.
    Then el sistema invalida el <link>.
    And el usuario es redirigido a la página de "inicio de sesión".

Examples: enlace
    | link                    |
    | verificacion1412341.com |
    | verificacion4356451.com |

Examples: tiempo
    | tiempo  |
    | 1 hora  |
    | 2 horas |


Scenario: Restablecer contraseña
    Given que el sistema actualiza la página de la plataforma "Restablecer contraseña" automáticamente.
    And muestra los campos de <Nueva contrasena> y <Repite nueva contrasena>.
    And también el botón "Confirmar" ubicado al final.
    When el usuario llena los campos.
    And el usuario presiona el botón.
    Then el sistema muestra un <mensaje de confirmacion>.

Examples: Cuenta
    | Nueva contrasena | Repite nueva contrasena |
    | 123456789        | 123456789               |
    | 123456789        | 123456789               |

Examples: Mensaje
    | mensaje de confirmacion                    |
    | La contraseña se ha cambiado exitosamente. |