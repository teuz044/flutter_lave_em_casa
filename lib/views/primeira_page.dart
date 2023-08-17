import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PrimeiraPage extends StatelessWidget {
  const PrimeiraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/img/back.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 128,
                height: 128,
                child: Image.asset("assets/img/logopngpequena.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 32.0, right: 32),
                child: Text(
                  'Lave com facilidade perto de sua casa!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Flexible(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 4,
                        backgroundColor: Colors.green.shade400,
                        fixedSize: const Size(280, 50)),
                    onPressed: () {
                      Modular.to.navigate('/home');
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Continuar',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_circle_right_outlined, size: 35,),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
