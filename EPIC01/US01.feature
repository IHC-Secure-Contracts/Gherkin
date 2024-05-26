Feature: Registro de usuario


Scenario Outline: Registro exitoso con cuenta de red social
Given que el usuario se encuentra en la página de registro.
When el ciudadano selecciona la opción "Continuar con Google" o "Continuar con Facebook".
And el usuario inicia sesión en su <cuenta de Google o Facebook>.
Then el sistema crea una nueva cuenta de ciudadano vinculada a la <cuenta de Google o Facebook>.
And el sistema muestra un <mensaje de confirmacion> de registro exitoso.
And el sistema redirige al usuario a la página de "Captura de datos".

Examples: Cuenta
    |  cuenta de Google o Facebook  |
    |  juan2004@gmail.com           |
    |  pedro212@gmail.com           |

Examples: Mensaje
    | mensaje de confirmacion         |
    | Te has registrado correctamente |


Scenario Outline: Registro fallido con cuenta de red social.
Given que el usuario se encuentra en la página de registro.
When el usuario selecciona la opción "Continuar con Google" o "Continuar con Facebook".
And ocurre un error en la autenticación.
Then el sistema muestra un <mensaje de error>.
And lo redirige de nuevo a la página de "registro" para intentar de nuevo.

Examples: Mensaje
    | mensaje de error                       |
    | Registro fallido, inténtalo nuevamente |


Scenario Outline: Registro exitoso con correo
Given que el usuario se encuentra en la página de "registro".
And el sistema muestra los campos de <correo>, <contrasena> y <repite contrasena>.
And también muestra la opción "Siguiente".
When el ciudadano complete los campos.
And presione la opción.
Then el sistema crea una nueva cuenta de ciudadano vinculada al correo.
And el sistema muestra un <mensaje de confirmacion>.
And el sistema redirige al usuario a la página de "Captura de datos".

Examples: Cuenta
    |  correo              | contrasena      |  repite contrasena  |
    |  juan2004@gmail.com  | 41564156164141  |  41564156164141     |

Examples: Mensaje
    | mensaje de confirmacion         |
    | Te has registrado correctamente |


Scenario Outline:  Registro fallido con correo
Given que el usuario se encuentra en la página de "registro".
And el sistema muestra los campos de <correo>, <contrasena> y <repite contrasena>.
And también muestra la opción "Siguiente".
When el ciudadano complete los campos.
And presione la opción.
And ocurre un error en la autenticación.
Then el sistema muestra un <mensaje de error>.
And el sistema lo redirige de nuevo a la página de "registro" para intentar de nuevo.

Examples: Cuenta
    |  correo              | contrasena      |  repite contrasena  |
    |  juan2004@gmail.com  | 41564156164141  |  41564156164141     |

Examples: Mensaje
    | mensaje de error                       |
    | Registro fallido, inténtalo nuevamente |


Scenario Outline: Visualización de captura de datos
Given que el sistema muestra el botón "Siguiente".
And el usuario se registra con una <red social o su correo>.
When el usuario presiona el botón.
Then el sistema muestra los campos en tres <etapas>.
And muestra un botón de "Registrar firma".
And también muestra al final un botón "Enviar".

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
Given que el sistema muestra los campos en tres <etapas>.
And también muestra al final un botón "Enviar".
When el usuarios complete los campos.
And presiona el botón.
And el sistema valida que toda la información esté correcta.
Then el sistema crea un nuevo usuario.
And lo redirige a la página de "inicio de sesión" para ingresar sus credenciales.

Examples: Etapas
    | Etapas             |
    | datos personales   |
    | datos de ubicación |
    | datos legales      |