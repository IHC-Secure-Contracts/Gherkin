Feature: Acceso a información

Scenario: Visualización del Menu Bar
    Given que el usuario se encuentra en la página principal "Mis contratos".
    And el sistema muestra un icono del "Menú Bar" en la parte superior izquierda de la página.
    When el usuario presiona el icono.
    Then el sistema abre el menú lateral.
    And muestra la opción "Perfil".

Scenario: Acceso exitoso al perfil de usuario
    Given que el sistema abre el menú lateral.
    And muestra la opción "Perfil".
    When el usuario presiona la opción.
    Then el sistema muestra la información personal del usuario.
    And el usuario puede revisar y confirmar que los datos son correctos y están actualizados.

Scenario: Acceso a la información personal es restringido a terceros
    Given que el usuario ha accedido a su información personal.
    When otros usuarios visitan el perfil del usuario.
    Then el sistema solo muestra la información que no es sensible y privada para el usuario.
    And se asegura que la información privada no sea visible para otros.