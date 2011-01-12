Feature: Navigate in menu links 
  In order click in menu links
  As a guest
  I want see the mark in the current link

  Background:                
    Given I am on the home page    
  
  Scenario: Active Link
    Then I should see "Página Inicial" within "li a.active"
    When I follow "Sobre"
    Then I should see "Sobre" within "li a.active"
    When I follow "Produtos"
    Then I should see "Produtos" within "li a.active"    
    When I follow "Contato"
    Then I should see "Contato" within "li a.active"    
    
    
