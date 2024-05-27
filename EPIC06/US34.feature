Feature: Menu mobile

  Scenario: Aparición de los elementos de navegación en dispositivos móvil
    Given que el usuario se encuentra en un dispositivo móvil
    And el sistema oculta los enlaces de navegación
    When el usuario pulse en el icono de menú
    Then el sistema muestra los enlaces de navegación con una transición suave
    And los coloca debajo del navbar

  Scenario: Ocultar elementos de navegación en dispositivos móviles
    Given que el usuario se encuentra en un dispositivo móvil
    And los enlaces de navegación están visibles
    When el usuario pulse el icono de menú
    Then el sistema oculta los enlaces de navegación con una transición suave
