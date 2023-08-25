import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeProprietarioPage extends StatefulWidget {
  const HomeProprietarioPage({super.key});

  @override
  State<HomeProprietarioPage> createState() => _HomeProprietarioPageState();
}

class _HomeProprietarioPageState extends State<HomeProprietarioPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    const Text(
      'Index 1: Chat',
      style: optionStyle,
    ),
    const Text(
      'Index 2: Configurações',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      Modular.to.pushNamed('/home/contatos');
    } else if (index == 0) {
      Modular.to.pushNamed('/home/');
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          backgroundColor: const Color(0xFF0B3D6F),
          leading: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 24),
            child: Image.asset('assets/img/logopngpequena.png'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                children: [
                  Text('Bem vindo ao menu do proprietário!', style: TextStyle(fontFamily: 'Montserrat'),),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_outlined,
              color: Colors.white,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: 'Configurações',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: const Color(0xFF0B3D6F),
        selectedItemColor: Colors.blue[200],
        onTap: _onItemTapped,
      ),
    );
  }
}
