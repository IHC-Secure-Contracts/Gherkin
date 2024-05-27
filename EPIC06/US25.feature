Feature: Conoce más sección

  Scenario: Redireccionamiento a sección "Conoce más"
    Given el usuario se encuentra en la página de la Landing Page
    And el sistema muestra en la parte superior el enlace "Conoce más"
    When el usuario hace clic en el botón
    Then el sistema lo redirige a la sección "Conoce más"

  Scenario: Visualización de la sección "Conoce más"
    Given el usuario hace clic en el botón
    And el sistema lo redirige a la sección "Conoce más"
    When el sistema termine de redirigir al usuario
    Then muestra el título de la sección
    And una breve descripción
    And un botón de comenzar abajo de la descripción
    And una imagen referencial en la parte derecha
