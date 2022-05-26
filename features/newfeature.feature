@LippiaTestManagerFront @TestRuns @ABC123_000023
Feature: newfeature

  @Smoke @Regresion @ABC123_000024
  Scenario Outline: Edicion de TestRun exitosa.
    When hace clic sobre el icono de lapiz del test run <run>
    And edita el campo Nombre <runName> TestRun
    And edita el campo Descripcion <runDescription> TestRun
    And click sobre el boton Guardar TestRun
    Then aparece una alerta con el mensaje: run de tes

    Examples: 
      | run               | runName                   | runDescription                  |
      | Run de Automation | Run editado de Automation | Run modificado desde automation |

  @ABC123_000008
  Scenario: The client search by "af" 00343641
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly