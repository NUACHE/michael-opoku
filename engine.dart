/* 
  This file contains the code for the GameEngine
*/
import 'player.dart';

class GameEngine {
/* 
  Create a property round as int
  In the constructor assign the round property to 1
*/
  int round;

  GameEngine({this.round = 1});

/* 
  Below create a loop in the function to run till the 
  _subEngine returns true
  The function has two Player model as parameters 
*/

  void startGame(Player player1, Player player2) {
    //Display Fight information details as seen in the screenshot
    while (true) {
      print('''
--------------------------------------------------------------------------------
Round $round : ${player1.name} attacks ${player2.name}
--------------------------------------------------------------------------------
''');

      //Assign _subEngine result between player1 and player2 here

      player2.health = _subEngine(player1, player2)[1];

      //Verify match results from _subEngine above here
      if (player2.health <= 0) break;
      //Display Fight information details as seen in the screenshot
      print('''
--------------------------------------------------------------------------------
Round $round : ${player2.name} attacks ${player1.name}
--------------------------------------------------------------------------------
''');

      //Assign _subEngine result between player2 and player1 here

      player1.health = _subEngine(player2, player1)[1];

      //Verify match results from _subEngine above here
      if (player1.health <= 0) break;
      round++;
    }
  }

/* 
  Below, return a bool from the function 
  checking the health of a player if it's less or equal to 0
  The function has two Player model as parameters 
*/
  _subEngine(Player player1, Player player2) {
    //Assign the player's attack
    int currentPlayerAttack = player1.attack;

    //Display the health status of the players as seen in the screenshot

    print('''
${player1.name}'s health : ${player1.health}
${player2.name}'s health : ${player2.health}
''');

    //Display name and attack of the attacking player as seen in the screenshot
    print('${player1.name} attacks with ${currentPlayerAttack}');
    //Calculate and update the new health of the player who was attacked
    player2.health = player2.health - currentPlayerAttack;

    /*
    Verify the fight round 
      if Game Over: Display player health and a win message with player name
      else: Display player health and continue   
    */
    if (player2.health <= 0) {
      print('''
${player2.name}'s health : ${player2.health}
''');
      print('''
${player2.name} is dead, ${player1.name} wins the fight.
''');
      return [false, player2.health];
    } else {
      print('''
${player2.name}'s health : ${player2.health}
''');

      return [true, player2.health];
    }
  }
}
