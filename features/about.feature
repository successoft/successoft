Feature: Navigate in about page
  In order to show de about page
  As a guest
  I want see the more about the company

  Background:
    Given I am on the about page    
  
  Scenario: Should see the about titles
    Then I should see "sobre" within ".sobre h2"
      And I should see "metodologia" within ".metod h2"
  
  Scenario: Should mark the active link
    Then I should see "Sobre" within "li a.active"