@Feature @LTM_7dba2889-647e-4202-b0fb-2d26057f61c7
Feature: Feature001

  @ABC123_000008
  Scenario: The client search by "af" 00343641
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly