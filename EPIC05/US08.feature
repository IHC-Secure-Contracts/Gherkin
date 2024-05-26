Feature: Filtrado de contratos por estado.

  Scenario: Mostrar opciones de filtrado
    Given el usuario se encuentra en la página principal de "Contratos"
    And el sistema muestra un desplegable que muestra por defecto el valor "Activos"
    When el usuario presiona el desplegable
    Then el sistema muestra en el desplegable los estados de "activos", "cancelados" y "finalizados"

  Examples:
    | pagina_principal | valor_defecto |
    | "Contratos"      | "Activos"     |

  Scenario: Búsqueda y filtrado exitosa de documentos contractuales
    Given el usuario selecciona una opción del desplegable
    When el sistema seleccione y encuentre los contratos que corresponden a ese estado seleccionado
    Then el sistema muestra únicamente los contratos que tienen el estado seleccionado

  Examples:
    | opcion_seleccionada |
    | "activos"           |
    | "cancelados"        |
    | "finalizados"       |

  Scenario: Fallo al aplicar el filtro
    Given intento aplicar un filtro en la búsqueda de contratos
    When el sistema no puede aplicar el filtro por algún error o falta de conexión
    Then el sistema debe mostrar un mensaje de error
    And debe permitirme intentar aplicar el filtro nuevamente una vez resuelto el problema

  Examples:
    | filtro_aplicado    | error_tipo   |
    | "activos"          | "conexión"   |
    | "cancelados"       | "desconocido"|
    | "finalizados"      | "timeout"    |

