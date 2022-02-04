/* 
  This file contains the code for the GameEngine
*/
import 'player.dart';

class GameEngine {
/* 
  Create a property round as int
  In the constructor assign the round property to 1
*/

/* 
  Below create a loop in the function to run till the 
  _subEngine returns true
  The function has two Player model as parameters 
*/
  void startGame(Player player1, Player player2) {
    //Display Fight information details as seen in the screenshot

    //Assign _subEngine result between player1 and player2 here

    //Verify match results from _subEngine above here

    //Display Fight information details as seen in the screenshot

    //Assign _subEngine result between player2 and player1 here

    //Verify match results from _subEngine above here
  }

/* 
  Below, return a bool from the function 
  checking the health of a player if it's less or equal to 0
  The function has two Player model as parameters 
*/
  _subEngine(Player player1, Player player2) {
    //Assign the player's attack

    //Display the health status of the players as seen in the screenshot

    //Display name and attack of the attacking player as seen in the screenshot

    //Calculate and update the new health of the player who was attacked

    /*
    Verify the fight round 
      if Game Over: Display player health and a win message with player name
      else: Display player health and continue   
    */
  }
}
