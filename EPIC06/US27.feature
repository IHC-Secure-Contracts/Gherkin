Feature: Testimonios sección

  Scenario: Redireccionamiento a sección "Testimonios"
    Given el usuario se encuentra en la página de la Landing Page
    And el sistema muestra en la parte superior el enlace "Testimonios"
    When el usuario hace clic en el botón
    Then el sistema lo redirige a la sección "Testimonios"

  Scenario: Visualización de la sección "Testimonios"
    Given el usuario hace clic en el botón
    And el sistema lo redirige a la sección "Testimonios"
    When el sistema termine de redirigir al usuario
    Then muestra el título de la sección
    And una breve descripción
    And tarjetas con los testimonios asociados que tienen imagen de la persona, descripción, nombre y cargo
