Feature: All feature user

  Background: user in home page
    * url baseUrl

  @login
  Scenario Outline: Login user
    Given path "/auth/login"
    And request {email: '<email>',password: '<password>'}
    When method POST
    Then status 201

    * def token = response.token

    Examples:
      | email         | password |
      | test@test.com | 12345678 |