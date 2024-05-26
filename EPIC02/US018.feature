Feature: Visualización del perfil de usuario vinculado a un contrato


Scenario Outline: Acceso exitoso a la información de perfil de contraparte
Given que el usuario se encuentra en la página de un contrato específico
And el sistema muestra, en la parte superior derecha de toda la página, el nombre de con quién se está realizando el contrato y al costado su foto de perfil
When el usuario presione en la foto de  perfil de la contraparte
Then el sistema muestra el <perfil> público con datos tales como nombre, dni, celular, ubicación, calificación y comentarios destacados


Examples: Perfil Contenido
    |                nombre                 ||    dni   ||  celular  || calificacion ||         comentario          |
    |             Pedro Garcia              || 72712923 || 923145246 ||      3       ||      Excelente Trabajo      |
    |            Arturo Ramirez             || 21349812 || 995146173 ||      4       ||          Muy Atento         |
