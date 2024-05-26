Feature: Visualización de contratos


Scenario Outline: Acceso a la página “Mis contratos”
Given que el usuario se encuentra en la página de "inicio de sesión".
When el usuario ingrese su <correo> y <contrasena>.
And se vincule con una <red social>.
Then el sistema lo redirige a la página principal de "Mis contratos".


Examples: Correo y contraseña
    |        correo        |     contraseña     |
    | digavig916@lucvu.com |     xT0DUMcv$#     |
    | jhopsig394@gmail.com |     $#x87%tRSa     |

Examples: Red Social
    |     red social     |
    |       google       |
    |      facebook      |


Scenario Outline: Visualizar Contratos.
Given  que el usuario se encuentra en la "página principal".
And el usuario tiene al menos un <contrato> asignado.
Then el sistema muestra la ventana de inicio muestra una lista de <tarjetas> con los contratos activos del usuario por defecto.
And muestra cada contrato en la ventana de inicio incluyendo el <titulo del contrato>, el <nombre de la persona> con la que se está haciendo el contrato y una <imagen> referencial. 
And permite que el usuario pueda hacer clic en un contrato listado en la ventana de inicio para ver sus detalles.

Examples: Contrato
    |            contrato              |
    |           Casa Surco             |
    |      Departamento Miraflores     |

Examples: Tarjetas
    |   titulo del contrato  |   nombre persona     |     imagen     |
    |      Departamento      |    Luis Gonzales     |     depa.jpg   |
    |       Casa Surco       |    Maria Sanchez     |    casa.jpeg   |