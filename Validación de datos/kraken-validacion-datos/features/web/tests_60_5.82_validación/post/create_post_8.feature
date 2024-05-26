Feature: Crear post

@user19 @web
Scenario: Como usuario me registro y creo un post con un extracto de únicamente caracteres especiales
  Given I navigate to page "http://34.170.53.250/ghost/#/setup"
  And I wait for 2 seconds
  When I enter to the setup page "<SETUP_VALUES_REMOTE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "1"
  And I wait for 2 seconds
  And I click in the add post button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "2"
  And I wait for 1 seconds
  And I enter a title for the post "<POST_TITLE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "3"
  And I wait for 1 seconds
  And I enter a description for the post "<POST_DESCRIPTION>" and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "4"
  And I wait for 1 seconds
  And I click the side bar menu option in posts
  And I wait for 1 seconds
  And I set a random excerpt with special characters
  And I wait for 1 seconds
  And I click publish post button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "5"
  And I wait for 1 seconds
  And I click final review post button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "6"
  And I wait for 1 seconds
  And I click publish confirm button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "7"
  And I wait for 1 seconds
  And I go back to dashboard and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "8"
  And I wait for 2 seconds

@user20 @web
Scenario: Como usuario me registro y creo un post con un extracto de únicamente vacíos
  Given I navigate to page "http://34.170.53.250/ghost/#/setup"
  And I wait for 2 seconds
  When I enter to the setup page "<SETUP_VALUES_REMOTE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "1"
  And I wait for 2 seconds
  And I click in the add post button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "2"
  And I wait for 1 seconds
  And I enter a title for the post "<POST_TITLE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "3"
  And I wait for 1 seconds
  And I enter a description for the post "<POST_DESCRIPTION>" and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "4"
  And I wait for 1 seconds
  And I click the side bar menu option in posts
  And I wait for 1 seconds
  And I set an empty lenght void random excerpt
  And I wait for 1 seconds
  And I click publish post button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "5"
  And I wait for 1 seconds
  And I click final review post button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "6"
  And I wait for 1 seconds
  And I click publish confirm button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "7"
  And I wait for 1 seconds
  And I go back to dashboard and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "8"
  And I wait for 2 seconds

@user21 @web
Scenario: Como usuario me registro e intento crear un post con un extracto de más de 300 caracteres
  Given I navigate to page "http://34.170.53.250/ghost/#/setup"
  And I wait for 2 seconds
  When I enter to the setup page "<SETUP_VALUES_REMOTE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "1"
  And I wait for 2 seconds
  And I click in the add post button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "2"
  And I wait for 1 seconds
  And I enter a title for the post "<POST_TITLE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "3"
  And I wait for 1 seconds
  And I enter a description for the post "<POST_DESCRIPTION>" and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "4"
  And I wait for 1 seconds
  And I click the side bar menu option in posts
  And I wait for 1 seconds
  And I set more than 300 characters in excerpt
  And I wait for 1 seconds
  And I check that excerpt throws error for more than 300 characters