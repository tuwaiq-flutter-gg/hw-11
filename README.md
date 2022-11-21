# Homework 11

### Given a person's allergy score, determine whether or not they're allergic to a given item, and their full list of allergies. An allergy test produces a single numeric score which contains the information about all the allergies the person has (that they were tested for).

The list of items (and their value) that were tested are:

* eggs (1)
* peanuts (2)
* shellfish (4)
* strawberries (8)
* tomatoes (16)
* chocolate (32)
* pollen (64)
* cats (128)

1. Create an enum `allergy` with constants "eggs, peanuts ... etc" from the list of item above.

2. Using `Switch-statement` write a program that takes a number reference from the user (1,2.. etc, from the list above) and prints the allergy name based on the user score. 

3. Use `default` if the score doesn't match any of the allergies in the list.

4. Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

5. Generate a random number between 1 and 50. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.

6. Write a program that returns a list that contains only the elements that are common between them (without duplicates). Make sure your program works on two lists of different sizes.

7. Using functions write a program  that asks the user for a multiple words string. Print the words in backwards order to the user. 

8. Create a program that will play a game with the user. The game works like this:

* Randomly generate a 4-digit number, ask the user to guess a 4 digit number. 
For every digit the user guessed correctly in the correct place, they have a “bonus”. For every digit the user guessed correctly in the wrong place is a “minus”
* Every time the user makes a guess, tell them how many “bonus” and “minus” they have, once the user guesses the correct number, the game is over.
* Keep track of the number of guesses the user makes throughout the game and tell the user at the end.

9. Make a two-player `Rock-Paper-Scissors` game against the computer, ask for user’s input, compare the user input with the computer chosen (Randomly), print out a message to the user if he did win "You win", print out a message to the user "We have a tie!" if the computer and user are the same, or "You lose" otherwise. Don't forget to handel wrong inputs.

10. Write a password generator in Dart. put your own rules, strong passwords have a mix of lowercase and uppercase letters, numbers, and symbols. If the user iput is "Done" exit the program or generating a new password every time the user asks for a "new password".

11. Write a program that will keep track of when your friend’s birthdays are, and be able to find that information based on their name. Create a map called `BODmap` of names and birthdays. When you run your program it should ask the user to enter a name, and return the birthday of that person back to them.

12.Create a function that takes a list of numbers  called `numberOfList` and makes a new list of only the first and last elements of the given list.  
