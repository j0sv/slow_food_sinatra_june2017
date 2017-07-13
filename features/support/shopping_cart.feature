Feature: As a Customer
  In order to buy food
  I need to add dishes to my order

  Background:
    Given the following dishes exist
      | name                  | description          | price | category_id |
      | Burger Special        | A bacon cheeseburger | 75    | 2           |
      | Not so Special Burger | Meat Burger          | 25    | 2           |
    And the following categories exist
      | name         |
      | Starter      |
      | Main         |
      | Dessert      |

Scenario: A customer is able to add dishes to their cart
  Given I visit the menu page
  And I click on the "add" button
  And show me the page
  Then I should see the "Burger Special" in my cart
  And show me the page
