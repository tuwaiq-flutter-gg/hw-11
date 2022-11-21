# Homework 11

1. Imagine you're on a football team nearing the end of the season. Create a `leaguePosition` constant with a value of 1. Using a switch statement, print "Champions!" if the `leaguePosition` is 1, "Runners up" if the value is 2, "Third place" if the value is 3, and "Bad season!" in all other cases.

### Heart Rate App

2. Write a switch statement that will print different statements based on what range `currentHR` falls into. Below is a list of ranges and the associated statements

100-120: "You are in the Very Light zone. Activity in this zone helps with recovery."
121-140: "You are in the Light zone. Activity in this zone helps improve basice endurance and fat burning."
141-160: "You are in the Moderate zone. Activity in this zone helps improve aerobic fitness."
161-180: "You are in the Hard zone. Activity in this zone increases maximum performance capacity for shorter sessions."
181-200: "You are in the Maximum zone. Activity in this zone helps fit athletes develop speed."

3. If `currentHR` is above the listed zones, print some kind of warning asking the user to slow down.

4. Create an enum `weekdays` with constants "Sunday, Monday ... etc"

5. Write a program that takes a day reference from the user (1,2..) and prints "Holiday" if the day is Friday or Saturday, otherwise prints "Not Holiday".

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

6. Create an enum `allergy` with constants "eggs, peanuts ... etc" from the list of item above.

7. Using `Switch-statement` write a program that takes a number reference from the user (1,2.. etc, from the list above) and prints the allergy name based on the user score. 

8. Use `default` if the score doesn't match any of the allergies in the list.
