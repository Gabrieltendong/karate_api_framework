Feature: All testing endpoint product

  Background:
    * url baseUrl
    Given header Authorization = authInfo.authorization

  Scenario: create product
    Given path "/product/create"
    And print authInfo
    And def data = read('createProductData.json')
    And request data
    When method POST
    Then status 201

