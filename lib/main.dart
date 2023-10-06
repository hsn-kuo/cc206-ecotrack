import 'package:flutter/material.dart';
import 'package:ecotrackflutter/features/home.dart';

void main() {
  runApp(EcoTrackApp());
}

class EcoTrackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoTrack',
      theme: ThemeData(
        primarySwatch: Colors.green, // Set your preferred theme colors
      ),
      home: EcoTrackHomePage(),
    );
  }
}

class EcoTrackHomePage extends StatefulWidget {
  @override
  _EcoTrackHomePageState createState() => _EcoTrackHomePageState();
}

class _EcoTrackHomePageState extends State<EcoTrackHomePage> {
  TextEditingController textField1Controller = TextEditingController();
  TextEditingController textField2Controller = TextEditingController();

  @override
  void dispose() {
    textField1Controller.dispose();
    textField2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EcoTrack'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Leave this space for your image at the top
            SizedBox(height: 200), // Space for the image

            // Two text fields in the middle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    controller: textField1Controller,
                    decoration: InputDecoration(
                      labelText: 'Input 1',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: textField2Controller,
                    decoration: InputDecoration(
                      labelText: 'Input 2',
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20), // Spacer

            // Green "Calculate" button at the bottom
            ElevatedButton(
              onPressed: () {
                // Add your calculation logic here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Set the button color to green
              ),
              child: Text('Calculate', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Set the background color to black
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
