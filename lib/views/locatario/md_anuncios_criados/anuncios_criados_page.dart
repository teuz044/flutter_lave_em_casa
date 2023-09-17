// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/locatario/md_anuncios_criados/controllers/anuncios_controller.dart';

class AnunciosCriadosPage extends StatefulWidget {
  const AnunciosCriadosPage({super.key});

  @override
  State<AnunciosCriadosPage> createState() => _AnunciosCriadosPageState();
}

class _AnunciosCriadosPageState extends State<AnunciosCriadosPage> {
  AnunciosController controller = AnunciosController();

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
  void initState()  {
    super.initState();
     controller = AnunciosController();
     controller.getAnuncios().then((value) {
       setState(() {
       });
     });
  }
  @override
  void dispose() {
    super.dispose();
  }

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
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search, color: Colors.grey),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Pesquisar...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4),
                child: Row(
                  children: [
                    Flexible(
                      child: InkWell(
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: Offset(
                                  1.0, // Move to right 5  horizontally
                                  1.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          ),
                          child: const Row(
                            children: [
                              SizedBox(
                                width: 4,
                              ),
                              Icon(Icons.filter_alt_outlined),
                              Text('Filtros'),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Flexible(
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0, // soften the shadow
                              spreadRadius: 1.0, //extend the shadow
                              offset: Offset(
                                1.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Icon(Icons.location_city_outlined),
                            Text('Cidade'),
                          ],
                        ),
                      ),
                    )
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.filter_alt_outlined,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: controller.lstAnuncios.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    child: ListTile(
                      title:
                          Text(controller.lstAnuncios[index].titulo.toString()),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Endereço'),
                          Text(
                              'Preço: ${controller.lstAnuncios[index].valorLavagem}')
                        ],
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
