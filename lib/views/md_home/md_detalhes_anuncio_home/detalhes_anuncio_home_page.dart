import 'package:flutter/material.dart';
import 'package:lave_em_casa_flutter/views/md_home/controllers/home_controller.dart';

class DetalhesAnuncioHomePage extends StatefulWidget {

   final HomeController controller;
  const DetalhesAnuncioHomePage({ super.key, required this.controller });

  @override
  State<DetalhesAnuncioHomePage> createState() => _DetalhesAnuncioHomePageState();
}

class _DetalhesAnuncioHomePageState extends State<DetalhesAnuncioHomePage> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: Column(
             children: [
               Text(widget.controller.descricaoEC.text),
               Text(widget.controller.tituloEC.text),
               Text(widget.controller.valorLavagemEC.text),
             ],
           ),
       );
  }
}