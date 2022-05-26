@Feature @ABC123_000022
Feature: newFeature

  @ABC123_000008
  Scenario: The client search by "af" 00343641
    Given The client is in google page
    When The client search for word lippia
    Then The client verify that results are shown properly