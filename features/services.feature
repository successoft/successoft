Feature: Navigate in the service 
  In order to show de service page
  As a guest
  I want see about the service of the SuccesSoft

  Background:                
    Given I am on the services page    
  
  Scenario: Should see the titles of sessions into boxes
    Then I should see "SuccesSoft - Serviços/Produtos" within "title"  
      And I should see "serviços / produtos" within ".servicos h2"  
      And I should see "clientes" within ".clientes h2"

  
  Scenario: Should mark the active link
    Then I should see "Serviços/Produtos" within "li a.active"