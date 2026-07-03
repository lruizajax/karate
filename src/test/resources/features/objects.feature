Feature: Pruebas de API para Restful-API Dev

  Background:
    * url 'https://api.restful-api.dev'

  Scenario: Obtener la lista de objetos (GET)
    Given path 'objects'
    When method get
    Then status 200
    And assert response.length > 0

  Scenario: Crear un nuevo objeto (POST)
    Given path 'objects'
    And request
    """
    {
        "name": "Apple MacBook Pro 16",
        "data": {
            "year": 2019,
            "price": 1849.99,
            "CPU model": "Intel Core i9",
            "Hard disk size": "1 TB"
        }
    }
    """
    When method post
    Then status 200
    And match response.name == 'Apple MacBook Pro 16'
    And match response.id != null