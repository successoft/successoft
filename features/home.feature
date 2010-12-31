Feature: Navigate in home
  In order to show de home page
  As a guest
  I want see the summary about the SuccesSoft company
  
  Scenario: Should see the titles of sessions into boxes
    Given I am on the home page
    Then I should see "história" within "h2.about_title"
      And I should see "serviços" within "h2.service_title"
      And I should see "clientes" within "h2.customer_title"        