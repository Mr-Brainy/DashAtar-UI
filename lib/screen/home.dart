import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onClickedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashAtar App'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.green.shade800,
                radius: 30.0,
              ),
              label: Text('Glory'),
              labelStyle: TextStyle(color: Colors.blue),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.only(bottom: 30),
              width: 150,
              height: 40,
              color: Colors.blueGrey,
              child: Center(
                child: Text(
                  'King Jesus',
                  style: TextStyle(color: Colors.amber),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.only(bottom: 40.0),
              width: 300,
              height: 60,
              color: Colors.grey[400],
              child: Center(
                child: Text(
                  'Glory be to God!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Center(
              child: Wrap(
                spacing: 4.0,
                runSpacing: 4.0,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.blue[700],
                    child: Image.asset(
                      'assets/dashatar.png',
                      height: 10,
                      width: 40,
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.red[700],
                    child: Image.asset('assets/dashatar.png'),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.teal[700],
                    child: Image.asset('assets/dashatar.png'),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.purple[700],
                    child: Image.asset('assets/dashatar.png'),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.black,
                    child: Image.asset('assets/dashatar.png'),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.grey[700],
                    child: Image.asset('assets/dashatar.png'),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.amber[700],
                    child: Image.asset('assets/dashatar.png'),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.brown[700],
                    child: Image.asset('assets/dashatar.png'),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.pink[700],
                    child: Image.asset('assets/dashatar.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.lime,
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onClickedItem,
        selectedItemColor: Colors.brown,
      ),
    );
  }
}
