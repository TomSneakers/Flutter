// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  '/Users/tomdesvignes/Documents/RPI/Flutter1/flutter_application_4/assets/images/FirstPage.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width - 285) / 2,
            bottom: 120.0, // Décalage de 50 pixels vers le haut
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Container(
                width: 285.0,
                height: 49.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      '/Users/tomdesvignes/Documents/RPI/Flutter1/flutter_application_4/assets/images/Button.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  '/Users/tomdesvignes/Documents/RPI/Flutter1/flutter_application_4/assets/images/SecondPage.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width - 285) / 2,
            bottom: 120.0, // Décalage de 50 pixels vers le haut
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                );
              },
              child: Container(
                width: 285.0,
                height: 49.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      '/Users/tomdesvignes/Documents/RPI/Flutter1/flutter_application_4/assets/images/Button.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  '/Users/tomdesvignes/Documents/RPI/Flutter1/flutter_application_4/assets/images/ThirdPage.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width - 285) / 2,
            bottom: 120.0, // Décalage de 50 pixels vers le haut
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FourthPage()),
                );
              },
              child: Container(
                width: 285.0,
                height: 49.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      '/Users/tomdesvignes/Documents/RPI/Flutter1/flutter_application_4/assets/images/Button.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  '/Users/tomdesvignes/Documents/RPI/Flutter1/flutter_application_4/assets/images/FourthPage.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width - 285) / 2,
            bottom: 180.0, // Décalage de 50 pixels vers le haut
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Container(
                width: 285.0,
                height: 49.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      '/Users/tomdesvignes/Documents/RPI/Flutter1/flutter_application_4/assets/images/GetStarted.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final String correctUsername = 'Tom';
  final String correctPassword = 'TomTom';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                '/Users/tomdesvignes/Documents/RPI/Flutter1/flutter_application_4/assets/images/Login.png'), // Remplacez par le chemin de votre image de fond
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              style: TextStyle(color: Colors.white),
              controller: _usernameController,
              decoration: InputDecoration(
                  icon: Icon(Icons.account_circle),
                  labelText: 'Identifiant',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ))),
            ),
            SizedBox(height: 15.0),
            TextField(
                style: TextStyle(color: Colors.white),
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: 'Mot de passe',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )))),
            SizedBox(height: 15.0),
            InkWell(
              onTap: () {
                final username = _usernameController.text;
                final password = _passwordController.text;

                if (username == correctUsername &&
                    password == correctPassword) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Erreur de Connexion'),
                        content: Text('Identifiant ou Mot de passe incorrect.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Container(
                width: 285, // Largeur de votre bouton image
                height: 49,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        '/Users/tomdesvignes/Documents/RPI/Flutter1/flutter_application_4/assets/images/LoginButton.png'), // Chemin de votre image de bouton
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                '/Users/tomdesvignes/Documents/RPI/Flutter1/flutter_application_4/assets/images/Accueil.png'), // Remplacez par le chemin de votre image
            fit: BoxFit.cover, // Pour ajuster l'image à la taille de l'écran
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page d\'Accueil'),
      ),
      body: Center(
        child: Text('Bienvenue sur la Page Pr !'),
      ),
    );
  }
}

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page d\'Accueil'),
      ),
      body: Center(
        child: Text('Bienvenue sur la Page d\'entrainement!'),
      ),
    );
  }
}

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page d\'Accueil'),
      ),
      body: Center(
        child: Text('Bienvenue sur la Page Stats !'),
      ),
    );
  }
}

class HelloPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Page'),
      ),
      body: Center(
        child: Text('Bienvenue sur la Page Hello !'),
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Accueil(),
    Profile(),
    Book(),
    Stats(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromRGBO(243, 78, 58, 1)),
            label: '',
            backgroundColor: Color.fromRGBO(34, 37, 41, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box,
                color: Color.fromRGBO(159, 159, 159, 1)),
            label: '',
            backgroundColor: Color.fromRGBO(34, 37, 41, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Color.fromRGBO(159, 159, 159, 1)),
            label: '',
            backgroundColor: Color.fromRGBO(34, 37, 41, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Color.fromRGBO(159, 159, 159, 1)),
            label: '',
            backgroundColor: Color.fromRGBO(34, 37, 41, 1),
          ),
        ],
      ),
    );
  }
}
