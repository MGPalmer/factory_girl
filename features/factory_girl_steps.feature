Feature: Use step definitions generated by factories

  Scenario: create a post and verify its attributes
    Given the following post exists:
      | Title | a fun title         |
      | Body  | here is the content |
    Then I should find the following for the last post:
      | title | a fun title         |
      | body  | here is the content |

  Scenario: create several posts
    Given the following posts exist:
      | Title | Body   |
      | one   | first  |
      | two   | second |
      | three | third  |
    Then I should find the following for the last post:
      | title | three |
      | body  | third |
    And there should be 3 posts