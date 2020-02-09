import 'package:flutter/material.dart';

import 'lobby_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        actions: <Widget>[
          // TODO: Add a theme swapper
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(child: Image.asset("assets/undraw.co/mobile_login.png")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(hintText: "Username"),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(hintText: "Password"),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LobbyScreen(),
                              ),
                            );
                          },
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
