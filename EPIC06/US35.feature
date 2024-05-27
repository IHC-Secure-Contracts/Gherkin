Feature: Animación de la mision, vision, valores

  Scenario: Animación al pasar el cursor
    Given que el usuario está navegando en la landing page
    When el usuario pasa el cursor sobre el contenedor de misión, visión o valores
    Then el sistema inicia una animación de giro suave para ese contenedor
    And el sistema muestra la información relacionada al contenedor

  Scenario: Animación al sacar el cursor
    Given que el usuario mantiene el cursor sobre el contenedor de visión, misión o valores
    When el usuario saque el cursor de los contenedores
    Then el sistema inicia una animación de giro suave para ese contenedor
    And el sistema oculta la información relacionada al contenedor
