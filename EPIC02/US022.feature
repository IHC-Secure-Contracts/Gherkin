Feature: Notificaciones


Scenario Outline: Visualización de las notificaciones
Given que el usuario se encuentra en el “Menu Bar”.
And el sistema muestra la opción “Mis notificaciones”.
When el usuario presiona la opción.
Then el sistema lo redirige a la página de “Mis notificaciones”.
Y le muestra los detalles de cada <notificación> en tarjetas que contienen “Título de contrato”, “Documento de contrato” y  un icono que representa el estado(aceptado o rechazado) del documento.


Examples: Notificacion
    |       titulo de contrato      || documento de contrato ||    estado     |
    |          Casa Surco           ||      propiedad        ||  En revision  |
    |         Departamento          ||     acreditacion      ||    Aprobado   |
