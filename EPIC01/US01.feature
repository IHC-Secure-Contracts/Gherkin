Feature: Registro de usuario


Scenario Outline: Registro exitoso con cuenta de red social
Dado que el usuario se encuentra en la página de registro.
Cuando el ciudadano selecciona la opción "Continuar con Google" o "Continuar con Facebook".
Y el usuario inicia sesión en su <cuenta de Google o Facebook>.
Entonces el sistema crea una nueva cuenta de ciudadano vinculada a la <cuenta de Google o Facebook>.
Y el sistema muestra un <mensaje de confirmacion> de registro exitoso.
Y el sistema redirige al usuario a la página de "Captura de datos".

Examples: Cuenta
    |  cuenta de Google o Facebook  |
    |  juan2004@gmail.com           |
    |  pedro212@gmail.com           |

Examples: Mensaje
    | mensaje de confirmacion         |
    | Te has registrado correctamente |


Scenario Outline: Registro fallido con cuenta de red social.
Dado que el usuario se encuentra en la página de registro.
Cuando el usuario selecciona la opción "Continuar con Google" o "Continuar con Facebook".
Y ocurre un error en la autenticación.
Entonces el sistema muestra un <mensaje de error>.
Y el sistema lo redirige de nuevo a la página de "registro" para intentar de nuevo.

Examples: Mensaje
    | mensaje de error                       |
    | Registro fallido, inténtalo nuevamente |


Scenario Outline: Registro exitoso con correo
Dado que el usuario se encuentra en la página de "registro".
Y el sistema muestra los campos de <correo>, <contrasena> y <repite contrasena>.
Y también muestra la opción "Siguiente".
Cuando el ciudadano complete los campos.
Y presione la opción.
Entonces el sistema crea una nueva cuenta de ciudadano vinculada al correo.
Y el sistema muestra un <mensaje de confirmacion>.
Y el sistema redirige al usuario a la página de "Captura de datos".

Examples: Cuenta
    |  correo              | contrasena      |  repite contrasena  |
    |  juan2004@gmail.com  | 41564156164141  |  41564156164141     |

Examples: Mensaje
    | mensaje de confirmacion         |
    | Te has registrado correctamente |


Scenario Outline:  Registro fallido con correo
Dado que el usuario se encuentra en la página de "registro".
Y el sistema muestra los campos de <correo>, <contrasena> y <repite contrasena>.
Y también muestra la opción "Siguiente".
Cuando el ciudadano complete los campos.
Y presione la opción.
Y ocurre un error en la autenticación.
Entonces el sistema muestra un <mensaje de error>.
Y el sistema lo redirige de nuevo a la página de "registro" para intentar de nuevo.

Examples: Cuenta
    |  correo              | contrasena      |  repite contrasena  |
    |  juan2004@gmail.com  | 41564156164141  |  41564156164141     |

Examples: Mensaje
    | mensaje de error                       |
    | Registro fallido, inténtalo nuevamente |


Scenario Outline: Visualización de captura de datos
Dado que el sistema muestra el botón "Siguiente".
Y el usuario se registra con una <red social o su correo>.
Cuando el usuario presiona el botón.
Entonces el sistema muestra los campos en tres <etapas>.
Y muestra un botón de "Registrar firma".
Y también muestra al final un botón "Enviar".

Examples: Cuenta
    | red social o su correo   |
    | Facebook                 |
    | Google                   |

Examples: Etapas
    | Etapas             |
    | datos personales   |
    | datos de ubicación |
    | datos legales      |


Scenario Outline: Captura de datos exitosa
Dado que el sistema muestra los campos en tres <etapas>.
Y también muestra al final un botón "Enviar".
Cuando el usuarios complete los campos.
Y presiona el botón.
Y el sistema valida que toda la información esté correcta.
Entonces el sistema crea un nuevo usuario.
Y lo redirige a la página de "inicio de sesión" para ingresar sus credenciales.

Examples: Etapas
    | Etapas             |
    | datos personales   |
    | datos de ubicación |
    | datos legales      |