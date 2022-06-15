@MAB001_000010
Feature: prueba

  Background:
    Given El cliente realiza el login con el usuario automation.ltm y contraseña 1234
    And se dirije a la pantalla Runs

  @Smoke @Regresion @MAB001_000009
  Scenario Outline: Edicion de TestRun exitosa.
    When hace clic sobre el icono de lapiz del test run <run>
    And edita el campo Nombre <runName> TestRun
    And edita el campo Descripcion <runDescription> TestRun
    And click sobre el boton Guardar TestRun
    Then aparece una alerta con el mensaje: run de test ed

    Examples: 
      | run               | runName                   | runDescription                  |
      | Run de Automation | Run editado de Automation | Run modificado desde automation |