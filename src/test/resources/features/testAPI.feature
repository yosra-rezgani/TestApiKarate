@Feature1
Feature: Test API

  @GET @TNR
  Scenario: test GET
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
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
        Given url 'https://jsonplaceholder.typicode.com/posts/4'
        And request
      """
      {title: 'yosra', body: 'hiii',userId: 4}
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