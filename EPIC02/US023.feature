Feature: Reseñas


Scenario Outline: Visualización de las reseñas
Given que el usuario se encuentra en el “Menu Bar”.
And el sistema muestra la opción “Mis reseñas”.
When el usuario presiona la opción.
Then el sistema lo redirige a la página de “Mis reseñas”.
And le muestra los detalles de cada <reseña> en tarjetas que contienen <Foto de usuario>, <Estrellas calificadas>, <Nombre del usuario> y  un texto del <comentario> dejado.

Examples: Reseña
    |      Foto de usuario     || Estrellas calificadas ||    Nombre del usuario    ||       comentario                                                                                |
    |      PerfilMarco.jpg     ||           5           ||     Marco Hernandez      ||       La atención de Pedro García es impresionante. Siempre claro y conciso                     |
    |     PerfilCamila.jpg     ||           4           ||      Camila Torres       ||       Con Pedro García la compra fue rápida y sencilla. Su experiencia hace la diferencia       |
