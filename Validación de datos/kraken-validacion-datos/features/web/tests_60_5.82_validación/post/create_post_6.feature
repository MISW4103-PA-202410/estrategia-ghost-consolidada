Feature: Crear post

@user13 @web
Scenario: Creo un post con un titúlo y un archivo .csv
  Given I navigate to page "http://34.170.53.250/ghost/#/setup"
  And I wait for 1 seconds
  When I enter to the setup page "<SETUP_VALUES_REMOTE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "1"
  And I wait for 1 seconds
  And I click in the add post button and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "2"
  And I wait for 1 seconds
  And I enter a title for the post "<POST_TITLE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "3"
  And I wait for 1 seconds
  And I click in the add element button in posts
  And I wait for 1 seconds
  And I click in the add file button in posts and attach the .csv file
  And I wait for 1 seconds
  And I click publish post button and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "5"
  And I wait for 1 seconds
  And I click final review post button and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "6"
  And I wait for 1 seconds
  And I click publish confirm button and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "7"
  And I wait for 1 seconds
  And I go back to dashboard and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "8"
  And I wait for 2 seconds

@user14 @web
Scenario: Creo un post con un titúlo y un audio de tipo mp3
  Given I navigate to page "http://34.170.53.250/ghost/#/setup"
  And I wait for 1 seconds
  When I enter to the setup page "<SETUP_VALUES_REMOTE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "1"
  And I wait for 1 seconds
  And I click in the add post button and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "2"
  And I wait for 1 seconds
  And I enter a title for the post "<POST_TITLE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "3"
  And I wait for 1 seconds
  And I click in the add element button in posts
  And I wait for 1 seconds
  And I click in the add audio button in posts and attach a .mp3 file
  And I wait for 2 seconds
  And I click publish post button and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "5"
  And I wait for 1 seconds
  And I click final review post button and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "6"
  And I wait for 1 seconds
  And I click publish confirm button and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "7"
  And I wait for 1 seconds
  And I go back to dashboard and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "8"
  And I wait for 2 seconds

@user15 @web
Scenario: Creo un post con un titúlo y un audio de tipo aac
  Given I navigate to page "http://34.170.53.250/ghost/#/setup"
  And I wait for 1 seconds
  When I enter to the setup page "<SETUP_VALUES_REMOTE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "1"
  And I wait for 1 seconds
  And I click in the add post button and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "2"
  And I wait for 1 seconds
  And I enter a title for the post "<POST_TITLE>" and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "3"
  And I wait for 1 seconds
  And I click in the add element button in posts
  And I wait for 1 seconds
  And I click in the add audio button in posts and attach a .aac file
  And I wait for 2 seconds
  And I click publish post button and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "5"
  And I wait for 1 seconds
  And I click final review post button and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "6"
  And I wait for 1 seconds
  And I click publish confirm button and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "7"
  And I wait for 1 seconds
  And I go back to dashboard and take a screenshot for version "v5.82" feature "crear-post" scenario "1" step "8"
  And I wait for 2 seconds