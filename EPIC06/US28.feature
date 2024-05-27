Feature: Nosotros sección

  Scenario: Redireccionamiento a sección "Nosotros"
    Given el usuario se encuentra en la página de la Landing Page
    And el sistema muestra en la parte superior el enlace "Nosotros"
    When el usuario hace clic en el botón
    Then el sistema lo redirige a la sección "Nosotros"

  Scenario: Visualización de la sección "Nosotros"
    Given el usuario hace clic en el botón
    And el sistema lo redirige a la sección "Nosotros"
    When el sistema termine de redirigir al usuario
    Then muestra el título de la sección
    And una breve descripción
    And tarjetas asociadas a la misión, visión y valores de la startup
