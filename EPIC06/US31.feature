Feature: Sección contactanos

  Scenario: Redireccionamiento a sección "Contáctanos"
    Given el usuario se encuentra en la página de la Landing Page
    And el sistema muestra en la parte superior el enlace "Contáctanos"
    When el usuario hace clic en el botón
    Then el sistema lo redirige a la sección "Contáctanos"

  Scenario: Visualización de la sección "Contáctanos"
    Given el usuario hace clic en el botón
    And el sistema lo redirige a la sección "Contáctanos"
    When el sistema termine de redirigir al usuario
    Then muestra en la parte izquierda el título de la sección, subtítulo y descripción
    And en la parte derecha un formulario con los campos "Nombre", "Email", "Celular", "Mensaje" y un botón "Contáctenos"
