Feature: All testing endpoint cart

  Background:
    * url baseUrl
    Given header Authorization = authInfo.authorization

  Scenario: add product to cart fail
    Given path "/cart/add"
    And print authInfo
    And def data = read('addProductCartData.json')
    And request data
    When method POST
    Then status 201