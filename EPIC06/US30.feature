Feature: Preguntas frecuentes sección

  Scenario: Redireccionamiento a sección "Preguntas frecuentes"
    Given el usuario se encuentra en la página de la Landing Page
    And el sistema muestra en la parte superior el enlace "Preguntas frecuentes"
    When el usuario hace clic en el botón
    Then el sistema lo redirige a la sección "Preguntas frecuentes"

  Scenario: Visualización de la sección "Preguntas frecuentes"
    Given el usuario hace clic en el botón
    And el sistema lo redirige a la sección "Preguntas frecuentes"
    When el sistema termine de redirigir al usuario
    Then muestra el título de la sección
    And unos desplegables de preguntas frecuentes
