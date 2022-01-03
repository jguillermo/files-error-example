Feature: Add reference for new POS
  In order to add reference to Price Modifier for new POS
  As a cmd
  I need to be able to add reference to Price Modifier for new POS

  Scenario: Add reference for new POS
    Given I dispatch message "App\Service\DataFlow\DataFlowMessage" using routing key pos
    """
    {
      "httpResponse": {
        "created": true
      }
    }
    """
    Then I run "messenger:consume dataflow --limit=1"
    And I validate the following data exists on collection PriceModifier
    """
    [
      {
        "_id": "ObjectId(61a56beae72c5e19dc22cd31)"
      }
    ]
    """
