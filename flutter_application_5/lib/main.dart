// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MemoryGame());
}

class MemoryGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MemoryGamePage(),
    );
  }
}

class MemoryGamePage extends StatefulWidget {
  @override
  _MemoryGamePageState createState() => _MemoryGamePageState();
}

class _MemoryGamePageState extends State<MemoryGamePage> {
  List<String> cards = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H'
  ];
  List<String> shuffledCards = [];
  List<bool> cardFlips = [];
  int previousIndex = -1;
  bool isPlaying = true;
  int pairsFound = 0;

  @override
  void initState() {
    super.initState();
    shuffledCards = List.from(cards);
    shuffledCards.shuffle();
    cardFlips = List.filled(cards.length, false);
  }

  void _resetGame() {
    setState(() {
      shuffledCards.shuffle();
      cardFlips = List.filled(cards.length, false);
      previousIndex = -1;
      isPlaying = true;
      pairsFound = 0;
    });
  }

  Future<void> _checkForMatch(int index) async {
    if (!isPlaying || cardFlips[index]) return;

    setState(() {
      cardFlips[index] = true;
    });

    if (previousIndex == -1) {
      previousIndex = index;
    } else {
      if (shuffledCards[index] != shuffledCards[previousIndex]) {
        // Wait for a moment to show the cards before flipping them back
        await Future.delayed(Duration(seconds: 1));
        setState(() {
          cardFlips[index] = false;
          cardFlips[previousIndex] = false;
        });
      } else {
        pairsFound++;
        if (pairsFound == cards.length ~/ 2) {
          isPlaying = false; // Game over
        }
      }
      previousIndex = -1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jeu de Mémoire'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemCount: cards.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _checkForMatch(index);
                  },
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: cardFlips[index] ? Colors.white : Colors.blue,
                    child: Center(
                      child: cardFlips[index]
                          ? Text(
                              shuffledCards[index],
                              style: TextStyle(fontSize: 24),
                            )
                          : null,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: isPlaying ? null : _resetGame,
              child: Text('Rejouer'),
            ),
          ],
        ),
      ),
    );
  }
}
