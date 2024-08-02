import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    //debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: Home(),
  ));
}

class H extends StatefulWidget {
  const H({super.key});

  @override
  State<H> createState() => _HState();
}

class _HState extends State<H> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("F R A S E S"),
        backgroundColor: Colors.cyan,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text("conteudo principal"),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.cyan,
      ),
    );
  }
}
