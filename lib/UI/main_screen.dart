import 'package:flutter/material.dart';
import 'chart.dart';
import 'profile.dart';
import 'statistic.dart';
import 'history.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
int _selectedIndex = 0;
Widget _selectedWindow = Chart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'График',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Статистика',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.crop),
            label: 'История',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.crop),
            label: 'Профиль',
          ),
        ],
        backgroundColor: Colors.black12,
        unselectedItemColor: Colors.cyan,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index){
          print (index);
          setState(() {
            _selectedIndex = index;
            switch(index){
              case 0: _selectedWindow = Chart();
              break;
              case 1: _selectedWindow = Statistic();
              break;
              case 2: _selectedWindow = History();
              break;
              case 3: _selectedWindow = Profile();
              break;
            }
          });
        },
      ),
      body: _selectedWindow,
    );
  }
}