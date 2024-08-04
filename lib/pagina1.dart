import 'package:flutter/material.dart';
import 'dart:math';

class H extends StatefulWidget {
  const H({super.key});

  @override
  State<H> createState() => _HState();
}

class _HState extends State<H> {

  final _listaFrases = [
    "Aprendi através da experiência amarga a suprema lição: controlar minha ira e torná-la como o calor que é convertido em energia. Nossa ira controlada pode ser convertida numa força capaz de mover o mundo.",
    "Você nunca sabe que resultados virão da sua ação. Mas se você não fizer nada, não existirão resultados.",
    "Deus nos concede, a cada dia, uma página de vida nova no livro do tempo. Aquilo que colocarmos nela, corre por nossa conta.",
    "A felicidade não entra em portas trancadas.",
    "Procure descobrir o seu caminho na vida. Ninguém é responsável por nosso destino, a não ser nós mesmos.",
    "Cada boa ação que você pratica é uma luz que você cria em torno de seus próprios passos.",
  ];

  var _frase = "Clique abaixo";
  var n = 0;

  void _gerarFrase(){
    setState(() {
      _frase = _listaFrases[n];
      print("clicado  $_frase    $n");
    });
    if ( n >= 0 && n < 5 ){
      n++;
    } else {
      n = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "F R A S E S   D O   D I A",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Container(
          //width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png",fit: BoxFit.contain,alignment: Alignment.center,),
              SizedBox(
                width: double.infinity,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      _frase,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreen),
                onPressed: _gerarFrase,
                child: const Text("Nova Frase",style: const TextStyle(fontSize: 30,color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
