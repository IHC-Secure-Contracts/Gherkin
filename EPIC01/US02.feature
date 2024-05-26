Feature: Inicio de sesión

Scenario Outline: Inicio de sesión exitoso con red social
    Given que el usuario se encuentra en la página de inicio de sesión
    And el sistema muestra los botones de "Continuar con Google" o "Continuar con Facebook"
    When el usuario presiona uno de los botones.
    And el sistema valida la cuenta.
    Then el sistema lo redirige a la "página principal".


Scenario Outline: Inicio de sesión exitoso con correo
    Given que el usuario se encuentra en la página de "inicio de sesión".
    And el sistema muestra los campos <correo> y <contrasena>.
    And también muestra el botón "Iniciar sesión".
    When el usuario completa los campos.
    And presiona el botón.
    And el sistema valida la cuenta <correo> con la <contrasena>.
    Then el sistema lo redirige a la "página principal".

Examples: Cuenta
    | correo                 | contraseña |
    | usuario@gmail.com      | 123456     |
    | ejemplo@hotmail.com    | abcdef     |


Scenario Outline: Inicio de sesión fallido con red social
    Given que el usuario se encuentra en la página de "inicio de sesión".
    And el sistema muestra los botones de "Continuar con Google" o "Continuar con Facebook"
    When el usuario presiona uno de los botones.
    And el sistema no encuentra la cuenta asociada a la <red social> seleccionada.
    Then el sistema muestra un <mensaje de error>.
    And el sistema permite al usuario reintentar el inicio de sesión.

Examples: Red social
    | Red Social |
    | Google     |
    | Facebook   |

Examples: Mensaje
    | mensaje de error                               |
    | Inicio de sesion fallido, inténtalo nuevamente |

Scenario Outline: Inicio de sesión fallido con correo
    Given que el usuario se encuentra en la página de "inicio de sesión".
    And el sistema muestra los campos "correo" y "contraseña".
    And también muestra el botón "Iniciar sesión".
    When el usuario introduce un <correo electronico> o <contrasena incorrectos>.
    And presiona el botón.
    Then el sistema muestra un <mensaje de error>.
    And el sistema permite al usuario reintentar el inicio de sesión

Examples: Cuenta
    | correo             | contraseña |
    | gsasf@correo.com   | 123        |
    | f13aa@hotmail.com  | xyz        |

Examples: Mensaje
    | mensaje de error                               |
    | Inicio de sesion fallido, inténtalo nuevamente |