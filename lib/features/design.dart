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
        primarySwatch: Colors.green,
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
        backgroundColor: Colors.black,
        title: Column(
          children: [
            Text(
              'EcoTrack+',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Text(
              'Where small steps create big impact',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://media.istockphoto.com/id/183278612/photo/carbon-footprint-concept-xxxl.jpg?s=612x612&w=0&k=20&c=6RrxuT0HgMLprdJnG1VeCEN-UJAfYHUy0IrEeIbVgPs=',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder for design branch logic
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
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
                primary: Color.fromARGB(255, 164, 231, 8),
              ),
              child:
                  Text('Calculate Footprint', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
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
