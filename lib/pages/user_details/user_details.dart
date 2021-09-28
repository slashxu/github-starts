import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  late String username;
  UserDetails({Key? key, this.username = "username"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(username),
        backgroundColor: Colors.blueGrey[800],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            ClipOval(
              child: Image.network(
                'https://avatars.githubusercontent.com/u/22501155?s=200&u=f3b5016225b6e3066992451648afa78d635b3664&v=4',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
                height: 100.0,
                width: 100.0,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Sérgio José da Silva Jr.',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'slashxu',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Atuando como Analista de Sistemas a mais de 7 anos.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 16,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'São Paulo - Brazil',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'sergiojsjr@yahoo.com.br',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.link,
                  color: Colors.grey,
                  size: 16,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'https://github.com/slashxu',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
