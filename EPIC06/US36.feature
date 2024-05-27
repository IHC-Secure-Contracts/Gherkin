Feature: Preguntas desplegables

  Scenario: Desplegar pregunta al hacer clic
    Given que el usuario está en la sección FAQ de la landing page
    When el usuario hace clic en el icono de despliegue de la pregunta específica
    Then la respuesta a esa pregunta se despliega de manera suave y visible

  Scenario: Ocultar respuesta al hacer clic nuevamente
    Given que el usuario ha desplegado una respuesta de una pregunta
    When el usuario hace clic nuevamente en el icono de despliegue de la misma pregunta
    Then la respuesta se oculta de manera suave
