@ABC123_000319
Feature: jeofwnefoiewn

  @Usuarios @ABC123_000312
  Scenario Outline: Asignaguns.
    When hace click en el boton elipsis del test run <runName> con estado <estado>
    And selecciona la opcion <opcionTestRun> de la lista desplegable en Runs
    And hace click sobre el valor de la columna Usuario del primer test case
    And selecciona el usuario <usuarioTest> de la lista desplegable
    Then se visualiza el primer test case con el nuevo usuario asignado <usuarioTest>

    Examples: 
      | runName                                  | estado      | opcionTestRun | usuarioTest    |
      | Run creado por automation desde Projects | IN PROGRESS | Ver           | automation.ltm |