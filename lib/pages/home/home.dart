import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: 15,
              top: MediaQuery.of(context).size.height * 0.3),
          child: Form(
              child: Column(
            children: [
              const Text(
                'GITHUB STARS',
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50)),
                child: TextFormField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      hintText: "Digite um Nome ou Apelido do Github",
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.greenAccent[400]),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Procurar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
