Feature: Navigate in menu links 
  In order click in menu links
  As a guest
  I want see the mark in the current link

  Background:                
    Given I am on the home page    
  
  Scenario: Should mark the active link
    Then I should see "Página Inicial" within "li a.active"
    When I follow "Sobre"
    Then I should see "Sobre" within "li a.active"
    When I follow "Serviços/Produtos"
    Then I should see "Serviços/Produtos" within "li a.active"    
    When I follow "Contato"
    Then I should see "Contato" within "li a.active"    
    
    