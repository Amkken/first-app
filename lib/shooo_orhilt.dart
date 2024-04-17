import 'dart:math';
import 'package:flutter/material.dart';
final randomizer = Random();
class ShooOrhilt extends StatefulWidget {
  const ShooOrhilt({super.key});
  @override
  State<ShooOrhilt> createState() {
    return _shooOrhiltState();
  }
}
// ignore: camel_case_types
class _shooOrhiltState extends State<ShooOrhilt> {
  var currentDiceRoll = 2;
  var player1Guess = 0;
  var player2Guess = 0;
  void rollDice() {
    setState(() {
    currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    if(currentDiceRoll == player1Guess){
      ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Player 1 wins!')));
    }
    if(currentDiceRoll == player2Guess){
      ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Player 2 wins!')));
    }

  }

  void saveNumber(int x){
    setState(() {
      player1Guess = x;
    });
  }

  void saveNumber2(int x){
    setState(() {
      player2Guess = x;
    });
  }
  

@override
Widget build(context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [ 
      Transform.rotate(
        angle: 3.141592,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed:() {
                saveNumber(1);
              },
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
              child:const Text("1"),
            ),

            TextButton(
              onPressed:() {
                saveNumber(2);
              },
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
              child:const Text("2"),
            ),

            TextButton(
              onPressed:() {
                saveNumber(3);
              },
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
              child:const Text("3"),
            ),

            TextButton(
              onPressed:() {
                saveNumber(4);
              },
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
              child:const Text("4"),
            ),

            TextButton(
              onPressed:() {
                saveNumber(5);
              },
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
              child:const Text("5"),
            ),

            TextButton(
              onPressed:() {
                saveNumber(6);
              },
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
              child:const Text("6"),
            ),

          ],
        ),

      
      ),
      
      
      Transform.rotate(
          angle: 3.141592, // 180 degrees in radians
          child: TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
            ),
            child: const Text('Шоог орхих'),
          ),
        ),
      
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png',
        width: 200,
      ),
      const SizedBox(height: 20),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
          fontSize: 28,
          ),
        ),
        child: const Text('Шоог орхих'),
      ),

      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed:() {
                saveNumber2(1);
              },
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
              child:const Text("1"),
            ),

            TextButton(
              onPressed:() {
                saveNumber2(2);
              },
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
              child:const Text("2"),
            ),

            TextButton(
              onPressed:() {
                saveNumber2(3);
              },
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
              child:const Text("3"),
            ),

            TextButton(
              onPressed:() {
                saveNumber2(4);
              },
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
              child:const Text("4"),
            ),

            TextButton(
              onPressed:() {
                saveNumber2(5);
              },
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
              child:const Text("5"),
            ),

            TextButton(
              onPressed:() {
                saveNumber2(6);
              },
              style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              ),
              child:const Text("6"),
            ),

          ],
        ),

    ],
  );
  }
}