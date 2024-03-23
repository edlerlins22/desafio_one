import 'package:desafio_one/page2.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool btnDesabilitado = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Entrada de Texto",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Digite um texto entre 3 e 20 caracteres"),
              onChanged: (String value) async {
                if (value.length < 3 || value.length > 20) {
                  setState(() {
                    btnDesabilitado = true;
                  });
                } else {
                  setState(() {
                    btnDesabilitado = false;
                  });
                }
              },
            ),
            ElevatedButton(
                onPressed: btnDesabilitado ? null : () {},
                child: const Text("Salvar")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                },
                child: const Text("Próxima Tela")),
          ],
        ),
      ),
    );
  }
}
