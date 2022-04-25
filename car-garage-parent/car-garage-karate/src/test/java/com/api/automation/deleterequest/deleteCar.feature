Feature: To test the delete end point
  DELETE /car/{id}

  Background: Create and Initialize base Url
    Given url 'http://localhost:8081'

  Scenario: To delete the car from application using car id
    # Create a new car
    # Delete the newly created car
    # Get request with qury parameter and validate for 404
    * def getRandomValue = function() {return Math.floor((100) * Math.random());}
    * def createCarId = getRandomValue()
    * def createCar = call read("../createCarWithVariables.feature") {_url:'http://localhost:8081',_path:'/cars',_id:'#(createCarId)'}
    # delete request
    Given path '/car/' + createJobId
    And headers {Accept:'application/json'}
    When method delete
    Then status 200
    # Get Request
    Given path '/cars'
    And params {id:'#(createCarId)',carMake:'Ford',carType:'Fuel'}
    And header Accept = 'application/json'
    When method get
    Then status 404

  Scenario: To delete the car entry from application using car id and delete the car twice
    # Create a new car
    # Delete the newly created car
    # Get request with qury parameter and validate for 404
    * def getRandomValue = function() {return Math.floor((100) * Math.random());}
    * def createCarId = getRandomValue()
    * def createCar = call read("../createCarWithVariables.feature") {_url:'http://localhost:8081',_path:'/cars',_id:'#(createCarId)'}
    # delete request
    Given path '/car/' + createCard
    And headers {Accept:'application/json'}
    When method delete
    Then status 200
    # delete request
    Given path '/car/' + createCarId
    And headers {Accept:'application/json'}
    When method delete
    Then status 404