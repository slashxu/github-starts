import 'package:flutter/material.dart';

import 'package:github_stars/pages/user_details/user_details.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  final TextEditingController _usernameController = TextEditingController();
  // Chave única
  final _formKey = GlobalKey<FormState>();

  void search() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (ctx) => UserDetails(
                  username: _usernameController.text,
                )),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Favor digitar um nome ou apelido do github'),
      ));
      return;
    }
  }

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
              key: _formKey,
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
                      controller: _usernameController,
                      style: const TextStyle(color: Colors.black),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '*Campo obrigatório';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.fromLTRB(
                              20.0, 10.0, 100.0, 10.0),
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          hintText: "Digite um Nome ou Apelido",
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
                      onPressed: () {
                        search();
                      },
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
