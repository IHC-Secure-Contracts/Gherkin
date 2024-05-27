Feature: Filtrado de contratos por estado.

  Scenario: Mostrar opciones de filtrado
    Given el usuario se encuentra en la "página principal"
    And el sistema muestra un "desplegable" que muestra por defecto el <valor> "Activos"
    When el usuario presiona el "desplegable"
    Then el sistema muestra en el desplegable los estados de "activos", "cancelados" y "finalizados"

  Examples: Valor del desplegable
    |Valor         |
    |"Activos"     |
    |"Cancelados"  |
    |"Finalizados" |

  Scenario: Búsqueda y filtrado exitosa de documentos contractuales
    Given el usuario selecciona una <opción del desplegable>
    When el sistema seleccione y encuentre los <contratos> que corresponden a ese estado seleccionado
    Then el sistema muestra únicamente los <contratos> que tienen el estado seleccionado

  Examples: Opcion del desplegable
    | Valor               |
    | "activos"           |
    | "cancelados"        |
    | "finalizados"       |
    
  Examples: Contratos
    | Nombre contrato          |
    | Contrato de venta        |
    | Contrato de departamento |

  Scenario: Fallo al aplicar el filtro
    Given intento aplicar un <filtro> en la "búsqueda de contratos"
    When el sistema no puede aplicar el filtro por algún error o falta de conexión
    Then el sistema debe mostrar un "mensaje de error"
    And debe permitirme intentar aplicar el <filtro> nuevamente una vez resuelto el problema

  Examples: Filtro 
    | filtro_aplicado    | 
    | "activos"          | 
    | "cancelados"       | 
    | "finalizados"      |

