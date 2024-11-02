import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Drums - Activity',
      home: MyHomePage(title: ''),
    );
  }
}

// Create an instance of AudioPlayer
AudioPlayer audioPlayer = AudioPlayer();

void playSound(String soundFile) async {
  await audioPlayer
      .play(AssetSource(soundFile)); // Play the specified sound file
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/BGDRUMS.jpg'),
                  fit: BoxFit.cover, // Cover the entire area
                ),
              ),
            ),
            Positioned(
              left: 100,
              top: 153,
              child: GestureDetector(
                onTap: () async {
                  playSound('kick.mp3');
                },
                child: Image.asset(
                  'assets/images/KICK.png',
                  width: 230,
                  height: 200,
                ),
              ),
            ),
            Positioned(
              left: 300,
              top: 153,
              child: GestureDetector(
                onTap: () async {
                  playSound('kick.mp3');
                },
                child: Image.asset(
                  'assets/images/KICK.png',
                  width: 230,
                  height: 200,
                ),
              ),
            ),
            Positioned(
              left: 230,
              top: 90,
              child: GestureDetector(
                onTap: () async {
                  playSound('snare.mp3');
                },
                child: Image.asset(
                  'assets/images/SNARE.png',
                  width: 170,
                  height: 160,
                ),
              ),
            ),
            Positioned(
              left: 145,
              top: 110,
              child: GestureDetector(
                onTap: () async {
                  playSound('tom1.mp3');
                },
                child: Image.asset(
                  'assets/images/TOM.png',
                  width: 120,
                  height: 110,
                ),
              ),
            ),
            Positioned(
              left: 250,
              top: 50,
              child: GestureDetector(
                onTap: () async {
                  playSound('tom2.mp3');
                },
                child: Image.asset(
                  'assets/images/TOM.png',
                  width: 120,
                  height: 110,
                ),
              ),
            ),
            Positioned(
              left: 370,
              top: 110,
              child: GestureDetector(
                onTap: () async {
                  playSound('tom3.mp3');
                },
                child: Image.asset(
                  'assets/images/TOM.png',
                  width: 120,
                  height: 110,
                ),
              ),
            ),
            Positioned(
              left: 355,
              top: 2,
              child: GestureDetector(
                onTap: () async {
                  playSound('crashr.mp3');
                },
                child: Image.asset(
                  'assets/images/CRASH.png',
                  width: 120,
                  height: 120,
                ),
              ),
            ),
            Positioned(
              left: 145,
              top: 2,
              child: GestureDetector(
                onTap: () async {
                  playSound('crashm.mp3');
                },
                child: Image.asset(
                  'assets/images/SPLASH.png',
                  width: 120,
                  height: 120,
                ),
              ),
            ),
            Positioned(
              left: 500,
              top: 120,
              child: GestureDetector(
                onTap: () async {
                  playSound('floor.mp3');
                },
                child: Image.asset(
                  'assets/images/FLOOR.png',
                  width: 130,
                  height: 130,
                ),
              ),
            ),
            Positioned(
              left: 455,
              top: 2,
              child: GestureDetector(
                onTap: () async {
                  playSound('ride.mp3');
                },
                child: Image.asset(
                  'assets/images/RIDE.png',
                  width: 130,
                  height: 130,
                ),
              ),
            ),
            Positioned(
              left: -5,
              top: 175,
              child: GestureDetector(
                onTap: () async {
                  playSound('openhh.mp3');
                },
                child: Image.asset(
                  'assets/images/OPEN.png',
                  width: 130,
                  height: 100,
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 100,
              child: GestureDetector(
                onTap: () async {
                  playSound('closehh.mp3');
                },
                child: Image.asset(
                  'assets/images/CLOSEHH.png',
                  width: 130,
                  height: 100,
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 5,
              child: GestureDetector(
                onTap: () async {
                  playSound('crashl.mp3');
                },
                child: Image.asset(
                  'assets/images/CRASH.png',
                  width: 130,
                  height: 130,
                ),
              ),
            ),
            Positioned(
              right: 10, // Adjust X position as needed
              top: 5, // Adjust Y position as needed
              child: PopupMenuButton<String>(
                icon: Icon(
                  Icons.menu, // Material design menu icon
                  size: 30, // Size of the menu icon
                  color: Colors.white, // Change color as needed
                ),
                onSelected: (value) {
                  if (value == 'exit') {
                    // Exit the application
                    // For web or desktop, this may not work as expected.
                    // Consider using `SystemNavigator.pop()` for mobile apps.
                    print("Exiting app");
                    // Use SystemNavigator for mobile
                    // SystemNavigator.pop(); // Uncomment for mobile
                  } else if (value == 'settings') {
                    // Navigate to settings page
                    print("Settings tapped");
                    // Implement your settings navigation here
                  }
                },
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem<String>(
                      value: 'settings',
                      child: Text('Settings'),
                    ),
                    PopupMenuItem<String>(
                      value: 'exit',
                      child: Text('Exit'),
                    ),
                  ];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
