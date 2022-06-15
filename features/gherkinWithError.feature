
Feature: Vista previa archivos


  Scenario Outline: Adjuntar archivos a un Test Run Execution.
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    When hace click en el boton elipsis del test run <runName> con estado <estado>

    Examples:
      | runName                   | estado      | opcionTestRun| archivo            | posicion |
      | Run editado de Automation | IN PROGRESS | Ver          | test_run.PNG       | 1        |
      | Run editado de Automation | IN PROGRESS | Ver          | Adicionar_test.pdf | 1        |


