/* This file contains the model/blueprint for a player */
import 'dart:math';

class Player {
/* 
  Create properties
  1. name as final string
  2. health as int
*/

  final String name;
  int health;

  Player(this.name, {this.health = 100});

// Create a getter function (attack) to return a random integer ranging from 0 to 50
  int get attack {
    return Random().nextInt(50) + 0;
  }
}
