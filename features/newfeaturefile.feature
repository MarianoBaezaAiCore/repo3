@TestRuns @LippiaTestManagerFront
Feature: newfeaturefile

  @Smoke @Regresion
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
