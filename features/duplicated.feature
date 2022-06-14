@ABC123_000229
Feature: duplicated

  Background:
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirije a la pantalla Runs

  @Regresion @ABC123_000228
  Scenario: El cliente realiza una busqueda de runs
    When El cliente realiza la busqueda de un run
    Then el cliente visualiza la lista de run buscados

  @Regresion @ABC123_000227
  Scenario Outline: El cliente realiza una busqueda de runs por nombre
    When El cliente realiza la busqueda de un run por la palabra clave <NombreRun>
    Then Aparecen los runs que coinciden con el <NombreRun> indicado

    Examples: 
      | NombreRun |
      | demo      |
      | test      |