import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/proprietario/md_criar_anuncio/controllers/criar_anuncio_controller.dart';

class CriarAnuncioPage extends StatefulWidget {
  const CriarAnuncioPage({super.key});

  @override
  State<CriarAnuncioPage> createState() => _CriarAnuncioPageState();
}

class _CriarAnuncioPageState extends State<CriarAnuncioPage> {
  CriarAnuncioController criarAnuncioController = CriarAnuncioController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: const Color(0xFF0B3D6F),
          leading: IconButton(
              onPressed: () {
                Modular.to.pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10.0, bottom: 10, left: 24),
                    child: Image.asset('assets/img/logopngpequena.png'),
                  ),
                ],
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Crie seu anuncio',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: criarAnuncioController.tituloEC,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Título do anúncio',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: criarAnuncioController.descricaoEC,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Descrição do anúncio',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: criarAnuncioController.valorLavagemEC,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Preço do anúncio',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: criarAnuncioController.cidadeEC,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Cidade',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tags do anúncio',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Flexible(
                child: criarAnuncioController.isLoading == true ? CircularProgressIndicator() : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(400, 40)),
                    onPressed: () async{
                      setState(() {});
                      await criarAnuncioController.setAnuncio().then((value) {
                        setState(() {});
                        Modular.to.pop();
                      });
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_box_outlined,
                          size: 28,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Criar Anuncio',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
