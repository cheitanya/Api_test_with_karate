Feature: Api test in karate

  Background:
    * url baseUrl
    * def headersData = { Authorization: 'Basic cWFAcWEuY29tOnFhcWFxYQ==', Content-Type: 'application/xml' }
    * headers headersData
    * def sleep =
"""
function(x) {
   java.lang.Thread.sleep(5000);
  }

"""



  Scenario: Get call example

    Given  path '/products/ruby-on-rails-tote'
    When method GET
    Then status 200
    And call sleep
    And print response

#  Scenario: Post call
#
#    Given  path '/signup'
#    And request {}
#    When method POST
#    Then status 302
#    And call sleep
#    And print response



