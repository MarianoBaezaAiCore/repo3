@LippiaTestManagerFront @TestRuns
Feature: feaetteesgeg

  Background:
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirije a la pantalla Runs

  @Smoke @Regresion
  Scenario Outline: Ed2.
    When hace clic sobre el icono de lapiz del test run <run>
    And edita el campo Nombre <runName> TestRun
    And edita el campo Descripcion <runDescription> TestRun
    And click sobre el boton Guardar TestRun
    Then aparece una alerta con el mensaje: run de test editada

    Examples:
      | run               | runName                   | runDescription                  |
      | Run de Automation | Run editado de Automation | Run modificado desde automation |

  @Smoke @Regresion
  Scenario Outline: Dusente.
    When El cliente hace click sobre el boton elipsis del test run <runName>
    And selecciona la opcion <opcion> de la lista desplegable en Runs
    And modifica el campo Nombre <testRunName> del TestRun duplicado
    And hace click sobre el boton Duplicar TestRun
    Then aparece una alerta con el mensaje: Test run duplicada
    And se verifica que se duplico el test run <testRunName>

    Examples:
      | runName                   | opcion    | testRunName                 |
      | Run editado de Automation | Duplicar  | Run duplicado de automation | 

  @Usuarios
  Scenario Outline: Asignaguns.
    When hace click en el boton elipsis del test run <runName> con estado <estado>
    And selecciona la opcion <opcionTestRun> de la lista desplegable en Runs
    And hace click sobre el valor de la columna Usuario del primer test case
    And selecciona el usuario <usuarioTest> de la lista desplegable
    Then se visualiza el primer test case con el nuevo usuario asignado <usuarioTest>

    Examples:
      | runName                                  | estado      | opcionTestRun | usuarioTest    |
      | Run creado por automation desde Projects | IN PROGRESS | Ver           | automation.ltm |
