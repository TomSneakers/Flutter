import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Fond d'écran avec une image (personnalisez l'URL de l'image)
          Image.asset(
            'assets/background_image.jpg', // Remplacez par le chemin de votre image
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Bouton "Suivant"
                ElevatedButton(
                  onPressed: () {
                    // Naviguer vers une autre page similaire (ici, elle-même)
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Text('Suivant'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
