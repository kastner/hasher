Feature: Consistent Hashing
  As a l33t hax0r
  I want to use the language of my choice
  So that I can extend our backend system MY way.
  
  Scenario: The Hasher requires a prime sized container
    Given a hash container with a non-prime size
    Then a Hasher::NonPrimeContainer error should be raised
  
  Scenario: Hashing
    Given a hash container size of 90917
    When the method hash is invoked with 17614
    Then the number 1 is returned

  Scenario: Hashing Redux
    Given a hash container size of 1009
    When the method hash is invoked with O*519938
    Then the number 1 is returned
      
  Scenario: Hashing The Third
    Given a hash container size of 1009
    When the method hash is invoked with O*259631T
    Then the number 789 is returned
  
  Scenario Outline: Hashing a bunch
    Given a hash container size of <size>
    When the method hash is invoked with <input>
    Then the number <output> is returned
  
    Examples:
      | size  | input               | output  |
      | 90917 | 17614               | 1       |
      | 1009  | O*259631T           | 789     |
      | 1009  | O*519938            | 1       |
      | 1009  | C*375193            | 936     |
      | 1009  | O*576156            | 1001    |
      | 1009  | C*535806            | 814     |
      | 55711 | 071529PG0013798*01  | 0       |
