@MAB001_000008
Feature: feature creado en ltm_deleted.feature

  @Smoke @Regresion @MAB001_000003
  Scenario Outline: Adjuntar archivos a un Test Run Execution.
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirije a la pantalla Runs
    When hace click en el boton elipsis del test run <runName> con estado <estado>
    And selecciona la opcion <opcionTestRun> de la lista desplegable en Runs
    And el usuario adjunta el archivo <archivo> al <posicion> test
    Then verifico que se adjunto el archivo <archivo> al <posicion> test

    Examples: 
      | runName                   | estado      | opcionTestRun | archivo            | posicion |
      | Run editado de Automation | IN PROGRESS | Ver           | test_run.PNG       | 1        |
      | Run editado de Automation | IN PROGRESS | Ver           | Adicionar_test.pdf | 1        |

  @Smoke @Regresion @MAB001_000006
  Scenario Outline: Edicion de TestRun exitosa.
    When hace clic sobre el icono de lapiz del test run <run>
    And edita el campo Nombre <runName> TestRun
    And edita el campo Descripcion <runDescription> TestRun
    And click sobre el boton Guardar TestRun
    Then aparece una alerta con el mensaje: run de test ed

    Examples: 
      | run               | runName                   | runDescription                  |
      | Run de Automation | Run editado de Automation | Run modificado desde automation |

  @MAB001_000001
  Scenario: Scenario prueba 001
    Given hjk
    When ghj
    Then ghjk

  @Smoke @MAB001_000004
  Scenario Outline: Visualizar archivos en el reporte de un test run desde Proyectos.
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirije a la pantalla Proyectos
    And hace clic en el boton elipsis del proyecto <proyecto>
    And selecciona la opcion <opcion> de la lista desplegable en Proyectos
    When hace click en el boton elipsis del test run <runName> con estado <estado>
    And selecciona la opcion <opcionTestRun> de la lista desplegable en Runs
    And hace click sobre el archivo <archivo>
    Then se verifica que se abrio una nueva pestaña para el archivo

    Examples: 
      | proyecto                       | runName                   | opcion | estado      | opcionTestRun | archivo            |
      | Proyecto editado de Automation | Run editado de Automation | Runs   | IN PROGRESS | Ir al informe | Adicionar_test.pdf |