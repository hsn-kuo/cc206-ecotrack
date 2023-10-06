import 'package:flutter/material.dart';

void main() {
  runApp(EcoTrackDesignApp());
}

class EcoTrackDesignApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoTrack+ Design',
      theme: ThemeData(
        primarySwatch: Colors.green, // Set your preferred theme colors
      ),
      home: EcoTrackDesignPage(),
    );
  }
}

class EcoTrackDesignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Set the background color to black
        title: Column(
          children: [
            Text(
              'EcoTrack+',
              style: TextStyle(
                fontSize: 28, // Increase the font size
                fontWeight: FontWeight.bold,
                color: Colors.green, // Set the text color to green
              ),
            ),
            Text(
              'Where small steps create big impact',
              style: TextStyle(
                fontSize: 16, // Set the font size for the additional text
                color: Colors.white, // Set the text color to white
              ),
            ),
          ],
        ),
        centerTitle: true, // Center align the title
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Placeholder for an image
            Image.network(
              'https://media.istockphoto.com/id/183278612/photo/carbon-footprint-concept-xxxl.jpg?s=612x612&w=0&k=20&c=6RrxuT0HgMLprdJnG1VeCEN-UJAfYHUy0IrEeIbVgPs=',
              height: 200, // Set your preferred height
              width: 200, // Set your preferred width
            ),
            SizedBox(height: 20), // Spacer

            // Two text fields in the middle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Name:',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Insights:',
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20), // Spacer

            // Green "Calculate" button at the bottom
            ElevatedButton(
              onPressed: () {
                // Placeholder for design branch logic
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Set the button color to green
              ),
              child: Text('Share your stories here!',
                  style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 17),
            ElevatedButton(
              onPressed: () {
                // Placeholder for calculate logic
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 164, 231, 8), // Set the button color to blue
              ),
              child:
                  Text('Calculate Footprint', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Set the background color to black
        selectedItemColor: Colors.black,
        unselectedItemColor: Color.fromARGB(255, 42, 160, 60),
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
