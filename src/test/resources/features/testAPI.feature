@Feature1
Feature: Test API

  Background:
    Given print je commence le test

  @GET @TNR
  Scenario: test GET
    Given url urlServeur
    And method GET
    Then status 200
    And print response


  @POST @TNR
  Scenario: test POST
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request {title: 'foo', body: 'bar',userId: 1,}
    When method POST
    Then status 201

  @PUT @TNR
  Scenario: test PUT
    Given url urlServeur
    And path '/posts/20'
    And request
      """
      {title: 'yosra', body: 'hiii',userId: 20}
      """
    When method PUT
    Then status 200


  @DELETE @TNR
  Scenario: test DELETE
    Given url 'https://jsonplaceholder.typicode.com/posts/2'
    And request
      """
      {title: 'yosra', body: 'hiii',userId: 4}
      """
    When method DELETE
    Then status 200

  @TNR
  Scenario: test get mail
    Given url "https://reqres.in/api/users?page=1"
    When method GET
    Then match response.data[0].email == "george.bluth@reqres.in"
    And print response
