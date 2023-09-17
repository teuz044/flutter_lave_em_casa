import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EscolhaLoginPage extends StatefulWidget {
  const EscolhaLoginPage({super.key});

  @override
  State<EscolhaLoginPage> createState() => _EscolhaLoginPageState();
}

class _EscolhaLoginPageState extends State<EscolhaLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/img/fundo55.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                        ),
                        onPressed: () {
                          Modular.to.pop();
                        },
                      )),
                ),
                const Text(
                  'Qual o seu perfil?',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 260,
                  width: 300,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: const Offset(
                            1.0, // Move to right 5  horizontally
                            1.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white70),
                  child: Column(children: [
                    const Text(
                      'Ganhe dinheiro extra compartilhando sua máquina de lavar!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      '1. Suporte e Segurança',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const SizedBox(
                        child: Text(
                      '2. Renda extra',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    )),
                    const SizedBox(
                      height: 8,
                    ),
                    const SizedBox(
                        width: 200,
                        child: Text(
                          '3. Renda extra Flexibilidade e controle de horários',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Modular.to.pushNamed('/home/escolha_login/login_proprietario');
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.monetization_on_outlined),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Alugar a minha máquina!',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))
                  ]),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 260,
                  width: 300,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: const Offset(
                            1.0, // Move to right 5  horizontally
                            1.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white70),
                  child: Column(children: [
                    const Text(
                      'Procurando por uma solução prática e conveniente para lavar suas roupas?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      '1. Economia',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const SizedBox(
                        child: Text(
                      '2. Facilidade e conveniência',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    )),
                    const SizedBox(
                      height: 8,
                    ),
                    const SizedBox(
                        width: 200,
                        child: Text('3. Flexibilidade de horários',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                            ),
                            textAlign: TextAlign.center)),
                    const SizedBox(
                      height: 32,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade400),
                        onPressed: () {
                          Modular.to.pushNamed('/home/escolha_login/login_locatario');
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.eco_outlined),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Quero lavar minhas roupas!',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
