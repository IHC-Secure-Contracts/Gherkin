Feature: Navigation bar

  Scenario: Visualización de la barra de navegación
    Given el usuario se encuentra en la página
    When hace clic en una sección cualquiera del navbar
    And el sistema redirecciona al usuario a la sección elegida
    Then el sistema muestra el navbar en la parte superior derecha
