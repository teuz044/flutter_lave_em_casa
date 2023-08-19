// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    const Text(
      'Index 1: Sobre',
      style: optionStyle,
    ),
    const Text(
      'Index 2: Contatos',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      Modular.to.pushNamed('/home/contatos');
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
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6AA8FF),
                      ),
                      onPressed: () {
                        Modular.to.pushNamed('/home/login');
                      },
                      child: const Text(
                        'Entrar',
                        style: TextStyle(fontFamily: 'Montserrat'),
                      )), // IconButton(
                  //   onPressed: () {},
                  //   icon: const Icon(
                  //     Icons.notifications_active_outlined,
                  //     size: 30,
                  //     color: Colors.blue,
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 16,
                  // ),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: const Icon(
                  //     Icons.favorite_border_outlined,
                  //     size: 30,
                  //     color: Colors.blue,
                  //   ),
                  // ),
                ],
              ),
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24),
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Lave suas roupas em residências em seu bairro!',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 24,
                  color: Color(0xFF0B3D6F),
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 2,
              margin: const EdgeInsets.only(right: 210),
              decoration: const BoxDecoration(color: Color(0xFF6AA8FF)),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    child: ListTile(
                      title: const Text('Lave aqui'),
                      subtitle: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Endereço'), Text('Preço: 14,00')],
                      ),
                      trailing: Image.asset('assets/img/HOMEM TITULO.png'),
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 16,
            ),
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
              Icons.info_outline_rounded,
              color: Colors.white,
            ),
            label: 'Sobre',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contacts_outlined,
              color: Colors.white,
            ),
            label: 'Contatos',
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
