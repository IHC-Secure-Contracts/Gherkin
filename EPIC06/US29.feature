Feature: Plan sección

  Scenario: Redireccionamiento a sección "Plan"
    Given el usuario se encuentra en la página de la Landing Page
    And el sistema muestra en la parte superior el enlace "Plan"
    When el usuario hace clic en el botón
    Then el sistema lo redirige a la sección "Plan"

  Scenario: Visualización de la sección "Plan"
    Given el usuario hace clic en el botón
    And el sistema lo redirige a la sección "Plan"
    When el sistema termine de redirigir al usuario
    Then muestra el título de la sección
    And una tarjeta del único plan asociado con un botón de Comenzar en su interior
