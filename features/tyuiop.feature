@LippiaTestManagerFront @TestRuns
Feature: Vista previa archivos

#Como usuario de LTM
#Necesito poder previsualizar los adjuntos del test como una calesita
#Para poder ver las imagenes attacheadas a un test de un test run

  @Smoke @Regresion
  Scenario Outline: Adjuntar archivos a un Test Run Execution.
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirije a la pantalla Runs
