Feature: All feature user

  Background: user in home page
    * url baseUrl

  Scenario: Register user
    Given path "/user/register"
    And def data = read('registerData.json')
    And request data
    When method POST
    Then status 201