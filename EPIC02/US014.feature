Feature: Visualizar el estado de un documento


Scenario Outline: Acceso a la línea de tiempo del proceso contractual
Given que el usuario se encuentra en la página de un contrato específico.
And el sistema muestra un botón de “Estado” en la parte superior derecha de la página.
When el usuario selecciona el botón.
Then el sistema muestra verticalmente una línea de tiempo interactiva(desplazamiento) que representa el proceso contractual.
And el sistema detalla cada <hito> con su estado actual y una breve descripción al seleccionarlo.


Examples: Hito
    |            estado            |
    |            Subido            |  
    |          En revision         |  
    |            Firmado           |  

    

Scenario Outline: Actualizaciones en tiempo real en la línea de tiempo
Given que el sistema se encarga de validar el documento.
When el sistema completa un nuevo hito.
Then el sistema actualiza la línea de tiempo en tiempo real.
And el sistema notifica al usuario sobre el nuevo avance con una <notificacion>.


Examples: notificacion
  |                           Mensaje Notificacion                              |
  |                Tu documento ha sido aprobado exitosamente                   |
  | Tu documento no ha sido aprobado. Por favor revisa nuestras recomendaciones |
