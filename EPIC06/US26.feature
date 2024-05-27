Feature: Beneficios sección

  Scenario: Redireccionamiento a sección "Beneficios"
    Given el usuario se encuentra en la página de la Landing Page
    And el sistema muestra en la parte superior el enlace "Beneficios"
    When el usuario hace clic en el botón
    Then el sistema lo redirige a la sección "Beneficios"

  Scenario: Visualización de la sección "Beneficios"
    Given el usuario hace clic en el botón
    And el sistema lo redirige a la sección "Beneficios"
    When el sistema termine de redirigir al usuario
    Then muestra el título de la sección
    And una breve descripción
    And tarjetas con los beneficios asociados que tienen título, descripción e imagen referencial
