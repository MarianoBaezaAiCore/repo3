@ABC123_000320
Feature: qwertyuiop

  @Smoke @Regresion @ABC123_000311
  Scenario Outline: Dusente.
    When El cliente hace click sobre el boton elipsis del test run <runName>
    And selecciona la opcion <opcion> de la lista desplegable en Runs
    And modifica el campo Nombre <testRunName> del TestRun duplicado
    And hace click sobre el boton Duplicar TestRun
    Then aparece una alerta con el mensaje: Test run
    And se verifica que se duplico el test run <testRunName>

    Examples: 
      | runName                   | opcion   | testRunName                 |
      | Run editado de Automation | Duplicar | Run duplicado de automation |