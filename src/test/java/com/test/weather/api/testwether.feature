#Author: ravigunasekaran@gmail.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios 
#<> (placeholder)
#""
## (Comments)

#Sample Feature Definition Template
@tag
Feature: Test Wether API

@tag1
Scenario: Get Weather of Particular City
* print "============			TEST STARTED			================"

#* param appid = 'b03205b72b1e1435b051cf137845b53e'
Given url 'http://samples.openweathermap.org/data/2.5/forecast?q=Bangalore,IN&appid=b03205b72b1e1435b051cf137845b53e'
When method get
Then status 200
And match each response[*] == '#notnull'
* print "============			TEST COMPLETED			================"


#@tag2
#Scenario Outline: Title of your scenario outline
#Given I want to write a step with <name>
#When I check for the <value> in step
#Then I verify the <status> in step
#
#Examples:
    #| name  |value | status |
    #| name1 |  5   | success|
    #| name2 |  7   | Fail   |
