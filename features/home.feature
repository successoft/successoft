Feature: Navigate in home 
  In order to show de home page
  As a guest
  I want see the summary about the SuccesSoft company

  Background:                
    Given I am on the home page    
  
  Scenario: Session titles
    Then I should see "SuccesSoft - Página Inicial" within "title"  
      And I should see "História" within ".item1 h2"  
      And I should see "Produtos" within ".item2 h2"
      And I should see "Quem utiliza?" within ".item3 h2"
  
  Scenario: Active Link
    Then I should see "Página Inicial" within "li a.active"
