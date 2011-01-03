Feature: Navigate in home 
  In order to show de home page
  As a guest
  I want see the summary about the SuccesSoft company

  Background:                
    Given I am on the home page    
  
  Scenario: Should see the titles of sessions into boxes
    Then I should see "SuccesSoft - Página Inicial" within "title"  
      And I should see "história" within ".item1 h2"  
      And I should see "serviços" within ".item2 h2"
      And I should see "clientes" within ".item3 h2"
  
  Scenario: Should mark the active link
    Then I should see "Página Inicial" within "li a.active"