@ABC123_000321
Feature: perjtrerqon

  @Smoke @Regresion @ABC123_000310
  Scenario Outline: Ed2.
    When hace clic sobre el icono de lapiz del test run <run>
    And edita el campo Nombre <runName> TestRun
    And edita el campo Descripcion <runDescription> TestRun
    And click sobre el boton Guardar TestRun
    Then aparece una alerta con el mensaje: run de test editada

    Examples: 
      | run               | runName                   | runDescription                  |
      | Run de Automation | Run editado de Automation | Run modificado desde automation |