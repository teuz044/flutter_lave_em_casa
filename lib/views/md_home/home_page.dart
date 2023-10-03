// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/md_home/controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();

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
  void initState()  {
    super.initState();
     controller.getAnunciosPorCidade().then((value) {
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
        title: const Text('Bem vindo!'),
          backgroundColor: const Color(0xFF0B3D6F),
          leading: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8  , left: 24),
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
                        Modular.to.pushNamed('/home/escolha_login/');
                      },
                      child: const Text(
                        'Entrar',
                        style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                      )), 
                ],
              ),
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.only(left: 4.0, right: 4),
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox( 
              height: 16,
            ),
            const Text(
              'Perto de sua casa!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  color: Color(0xFF0B3D6F),
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 16,
            ),
            controller.isLoading == true ? Center(child: const CircularProgressIndicator(strokeWidth: 3.0,)) : SizedBox(
              height: 450,
              child:  ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: controller.lstAnuncios.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    child: ListTile(
                      title: Text(controller.lstAnuncios[index].titulo.toString(), style: const TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600),),
                      subtitle:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text(controller.lstAnuncios[index].cidade.toString()), Text('Preço: R\$${controller.lstAnuncios[index].valorLavagem.toString()}')],
                      ),
                      trailing: Image.asset('assets/img/HOMEM TITULO.png'),
                      onTap: () {
                        controller.selecionarAnuncio(index);
                        Modular.to.pushNamed('/home/detalhes_anuncio_home');
                      },
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
        unselectedLabelStyle: const TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, color: Colors.white),
        selectedLabelStyle: const TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, color: Colors.white),
        backgroundColor: const Color(0xFF0B3D6F),
        selectedItemColor: Colors.blue[200],
        onTap: _onItemTapped,
      ),
    );
  }
}
