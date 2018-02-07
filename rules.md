# We are building a casino! 
- You are to build one casino game, black jack, slots, roulette, etc, ( these are the ones I have seen built out before.)
requirements
## Build the game.
- In addition, the player will have a wallet, they can add money to the wallet, any winnings they get will be added to the wallet.
- If the wallet goes empty they must add more money or they have to stop playing.
- They need to be able to stop playing and cash out the wallet at anytime. (bonus if the cash out proccess tells them if they made a profit or not)
- let the player set the dollar/cents amount of the bet (in the game).
- let them continue playing as long as they have money or decide to cash out.
---
---
TODO:

when the user spins, any given spinner has half odds of being blank. 
---
## Slots plan:

- __1__ bet
  - __1.1__ show current balance
  - __1.2__ give bet options
  - __1.3__ get user's bet
- __2__ define prizes
  - __2.1__ print for each winning combo:
    - __2.1.1__ define combo
    - __2.1.2__ define payout
- __3__ roll 
  - __3.1__ for each spinner:
    - __3.1.1__ a list of possible values
    - __3.1.2__ a random selection from that list
  - __3.2__ report the values of each spin in a row
- __4__ deal out reward
  - __4.1__ compare results to the lists of winning combos
  - __4.2__ adjust user's balance if needed and print winnings
- __5__ give option to play again
  - __5.1__ if yes, go back to 1, if not print print winnings and end