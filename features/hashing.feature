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