Feature: To create the car in the application
         Use POST /cars to create a car in the application
         
Background: Create and initialise the base url
	Given url 'http://localhost:8081'
	
	Scenario:To create a job entry using JSON format
	 Given path '/cars'
   And request {"carId": 2,"carMake": "Ford","carType": "Fuel"}
   And headers {Accept : 'application/json', Content-Type: 'application/json'}
   When method post
   Then status 201
   And match response.carMake == "Ford"
   
   Scenario:To create a car using JSON format from a file
	 Given path '/cars'
   * def body = read("data/car.json")
   And request body
   And headers {Accept : 'application/json', Content-Type: 'application/json'}
   When method post
   Then status 201
   And match response.carMake == 'Ford'
   