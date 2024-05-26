Feature: Visualización de contratos


Scenario Outline: Acceso a la página “Mis contratos”
Dado que el usuario se encuentra en la página de "inicio de sesión".
Cuando el usuario ingrese su <correo> y <contrasena>.
Y se vincule con una <red social>.
Entonces el sistema lo redirige a la página principal de "Mis contratos".


Examples: Correo y contraseña
    |        correo        |     contraseña     |
    | digavig916@lucvu.com |     xT0DUMcv$#     |
    | jhopsig394@gmail.com |     $#x87%tRSa     |

Examples: Red Social
    |     red social     |
    |       google       |
    |      facebook      |


Scenario Outline: Visualizar Contratos.
Dado que el usuario se encuentra en la "página principal".
Y el usuario tiene al menos un <contrato> asignado.
Entonces el sistema muestra la ventana de inicio muestra una lista de <tarjetas> con los contratos activos del usuario por defecto.
Y muestra cada contrato en la ventana de inicio incluyendo el <titulo del contrato>, el <nombre de la persona> con la que se está haciendo el contrato y una <imagen> referencial. 
Y permite que el usuario pueda hacer clic en un contrato listado en la ventana de inicio para ver sus detalles.

Examples: Contrato
    |            contrato              |
    |           Casa Surco             |
    |      Departamento Miraflores     |

Examples: Tarjetas
    |   titulo del contrato  |   nombre persona     |     imagen     |
    |      Departamento      |    Luis Gonzales     |     depa.jpg   |
    |       Casa Surco       |    Maria Sanchez     |    casa.jpeg   |