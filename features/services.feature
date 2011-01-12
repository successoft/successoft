Feature: Navigate in the service 
  In order to show de service page
  As a guest
  I want see about the service of the SuccesSoft

  Background:                
    Given I am on the services page    
  
  Scenario: Sessions title
    Then I should see "SuccesSoft - Produtos" within "title"  
      And I should see "Produtos" within ".servicos h2"  
      And I should see "Quem utiliza?" within ".clientes h2"

  
  Scenario: Active link
    Then I should see "Produtos" within "li a.active"
