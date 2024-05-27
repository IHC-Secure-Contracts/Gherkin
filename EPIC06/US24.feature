Feature: Home seccion

  Scenario: Redireccionamiento a sección "Home"
    Given el usuario se encuentra en la página de la Landing Page
    And el sistema muestra en la parte superior izquierda de la página un botón del logo más el nombre de la startup
    When el usuario hace clic en el botón
    Then el sistema lo redirige a la sección "Home"

  Scenario: Visualización de la sección "Home"
    Given el usuario hace clic en el botón
    And el sistema lo redirige a la sección "Home"
    When el sistema termine de redirigir al usuario
    Then muestra una frase de llamado a la acción en el centro
    And también un botón de comenzar abajo de la frase
