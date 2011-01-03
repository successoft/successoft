Feature: Navigate in the contact 
  In order to show de contact page
  As a guest
  I want sent a message to SuccesSoft

  Background:                
    Given I am on the contact page    
  
  Scenario: Should see the titles of sessions into boxes
    Then I should see "SuccesSoft - Contato" within "title"  
      And I should see "fale conosco" within ".talk h2"  

  Scenario: Should mark the active link
    Then I should see "Contato" within "li a.active"