import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ContatosPage extends StatelessWidget {
  const ContatosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          Image.asset(
            'assets/img/fundo.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 28, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Modular.to.pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                Image.asset(
                  'assets/img/logopngpequena.png',
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right:20.0),
                  child: Text('Contatos', style: TextStyle(fontFamily: 'Montserrat', fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),),
                ),
                const SizedBox(height: 16,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 32.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 4, padding: const EdgeInsets.all(16)),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.email),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Email', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 32.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple.shade400,
                            elevation: 4,
                            padding: const EdgeInsets.all(16)),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.phone_android_outlined),
                            SizedBox(
                              width: 8,
                            ),
                            Text('Telefone', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 32.0),
                      child: Flexible(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 4,
                              padding: const EdgeInsets.all(16)),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(Icons.phone),
                              SizedBox(
                                width: 8,
                              ),
                              Text('Whatsapp', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
