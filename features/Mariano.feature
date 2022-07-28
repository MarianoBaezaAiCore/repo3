@PRY001_000006
Feature: Mariano

  @Smoke @PRY001_000002
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