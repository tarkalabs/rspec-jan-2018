## Blackjack

This will be a simple blackjack script. Write a class to represent the current hold of the user's cards. It should have an API to add card to the user's hold. And when the hold value is < 21 return 'ALIVE', if the hold value is > 21 return 'DEAD'. Return 'BLACKJACK' if the hold value is = 21.

When the hold value is equal to 21 the method should return a message when adding a card to the user's hold.

'A' value can be considered either as 1 or 11. Choose the one that will make user achieve blackjack or the one that does not tip the user over 21.

Example:

```
blackjack = Blackjack.new
=> INITIALIZED

blackjack.add_card('6')
=> ALIVE

blackjack.add_card('Q')
=> ALIVE

blackjack.add_card('5')
=> BLACKJACK

blackjack.add_card('3')
=> DENIED
```
