import 'package:flutter/material.dart';
import 'shooo_orhilt.dart';
void main() {
  runApp(MaterialApp(
    title: "Dice Roll",
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const Scaffold(
      
      body: BodyContainer(),

      ),
  ));
}

class BodyContainer extends StatelessWidget{
  const BodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 5, 109, 60),
            Color.fromARGB(255, 176, 204, 202)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: ShooOrhilt(),
      ),



    );
  }
}


class StyledText extends StatelessWidget {
  final String text;

  const StyledText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: const TextStyle(
        fontSize: 28,
        color: Color.fromARGB(200, 255, 255, 255),
        ),
      );
    }
}


