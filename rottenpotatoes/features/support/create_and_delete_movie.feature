Feature: add new movies or delete old movies

  As a movie buff
  So that I can modify the content on the website
  I want to be able to add new movies or delete old movies from database
  
Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |

  And  I am on the RottenPotatoes home page
  
  Scenario: add a new movie
  When  I follow "Add new movie"
  Then I should be on the create a new movie page
  Then I fill in "Title" with "Star Wars"
  And I fill in "Director" with "George Lucas"     
  And  I press "Save Changes"
  Then  I should be on the home page
  And   I should see "Star Wars was successfully created."
  
  Scenario: delete an old movie
  Given I am on the details page for "Aladdin"
  When I press "Delete"
  Then I should be on the home page
  And I should see "Movie 'Aladdin' deleted."
  
  