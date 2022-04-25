Feature: To test the updating of car 
         Use PUT /cars to update a car in the application
         
Background: Create and initialise the base url
	Given url 'http://localhost:8081'
	
	Scenario:To update a car using JSON format
	 Given path '/cars'
	 * def getRandomValue = function(){return Math.floor((100)*Math.random());}
	 * def id = getRandomValue()
   And request {"carId": '#(id)',"carMake": "Ford","carType": "Fuel"}
   And headers {Accept : 'application/json', Content-Type: 'application/json'}
   When method post
   Then status 201
   #PUT request
   
   Given path '/car'
	 And request {"carId": '#(id)',"carMake": "Toyota","carType": "Electric"}
   And headers {Accept : 'application/json', Content-Type: 'application/json'}
   When method put
   Then status 200
    * def carMake = karate.jsonPath(response, "$[?(@.carId=="+id+")].carMake")
    * def carType = karate.jsonPath(response, "$[?(@.carId=="+id+")].carType")
   And match response.carMake == 'Toyota'
   And match response.carType == 'Electric'
    
    
    