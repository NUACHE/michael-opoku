import 'dart:io';

import 'engine.dart';
import 'player.dart';
/* 
In this coding challenge, you going to create a Fighter Game in Dart 
The fight is going to be between two players
*/

//Start coding in the main function
void main() {
  //Initialize your Player models
  Player player1 = Player('John');
  Player player2 = Player('Andrew');

  //Run startGame from the Game Engine

  GameEngine().startGame(player1, player2);

  exit(0);
}

/*
Native Dart coding challenge 
Created by Benjamin Dotse 
*/
