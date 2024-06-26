Feature: Crear post

@user10 @web
Scenario: Como usuario me registro y creo un post con caracteres especiales
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
  And I set a random name for the post slug with special characters only and verify is not allowed
  And I wait for 1 seconds
  And I click publish post button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "5"
  And I wait for 1 seconds
  And I click final review post button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "6"
  And I wait for 1 seconds
  And I click publish confirm button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "7"
  And I wait for 1 seconds
  And I go back to dashboard and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "8"
  And I wait for 2 seconds

@user11 @web
Scenario: Como usuario me registro y creo un post con una url con espacios en blanco
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
  And I set a random name for the post slug with whitespaces
  And I wait for 1 seconds
  And I click publish post button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "5"
  And I wait for 1 seconds
  And I click final review post button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "6"
  And I wait for 1 seconds
  And I click publish confirm button and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "7"
  And I wait for 1 seconds
  And I go back to dashboard and take a screenshot for version "v5.82" feature "crear-post" scenario "5" step "8"
  And I wait for 2 seconds

@user12 @web
Scenario: Como usuario me registro intento crear un post con una imagen adjunta que es invalida
  Given I navigate to page "http://34.170.53.250/ghost/#/setup"
  And I wait for 1 seconds
  When I enter to the setup page "<SETUP_VALUES_REMOTE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "3" step "1"
  And I wait for 1 seconds
  And I click in the add post button and take a screenshot for version "v5.82" feature "crear-post" scenario "3" step "2"
  And I wait for 1 seconds
  And I enter a title for the post "<POST_TITLE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "3" step "3"
  And I wait for 1 seconds
  And I enter a description for the post "<POST_DESCRIPTION>" and take a screenshot for version "v5.82" feature "crear-post" scenario "3" step "4"
  And I wait for 1 seconds
  And I attach a wrong type of image
  And I wait for 2 seconds
  And I verify any image wasn't attached
  And I click publish post button and take a screenshot for version "v5.82" feature "crear-post" scenario "3" step "6"
  And I wait for 1 seconds
  And I click final review post button and take a screenshot for version "v5.82" feature "crear-post" scenario "3" step "7"
  And I wait for 1 seconds
  And I click publish confirm button and take a screenshot for version "v5.82" feature "crear-post" scenario "3" step "8"
  And I wait for 1 seconds
  And I go back to dashboard and take a screenshot for version "v5.82" feature "crear-post" scenario "3" step "9"
  And I wait for 2 seconds