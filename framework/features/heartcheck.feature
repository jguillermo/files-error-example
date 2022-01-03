Feature: Heartcheck
  In order to validate api its alive
  As a non authenticated user
  I need to be able to hit endpoint

  Scenario: Get heartbeep
    Given I make a GET request to "healthcheck"
    Then I get a SUCCESSFUL response
    #And I validate is HTML response
    And I validate the response is
    """
    we are here ;)
    """
