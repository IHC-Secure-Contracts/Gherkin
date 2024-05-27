Feature: Responsividad del sitio web

  Scenario: Responsividad para el Mobile
    Given el usuario se encuentra en la Landing Page
    When el sistema detecta que el usuario está usando un dispositivo móvil o tablet
    Then el sistema ordena y dispone el contenido para adaptarse al viewport
    And oculta los enlaces del navbar
    And muestra un botón de desplegable

  Scenario: Responsividad con Web
    Given el usuario se encuentra en la Landing Page
    When el sistema detecta que el usuario está usando un dispositivo de escritorio
    Then el sistema ajusta automáticamente la información según el viewport
    And muestra todos los enlaces del navbar en la parte derecha
