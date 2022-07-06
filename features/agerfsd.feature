@TestRuns @LippiaTestManagerFront @PRY002_000010
Feature: agerfsd

  @Smoke @Regresion @PRY002_000009
  Scenario Outline: Adjuntar archivos a un Test Run Execution.
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirije a la pantalla Runs