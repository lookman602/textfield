import 'package:flutter/material.dart';

class UserPassword extends StatefulWidget {
  final String title;

  UserPassword({Key key, this.title}) : super(key: key);
  @override
  _UserPasswordState createState() => _UserPasswordState();
}

class _UserPasswordState extends State<UserPassword> {
  String user, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    user = value;
                  });
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: 'Username',
                    hintText: 'Enter Username',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ))),
              ),
              width: 280,
              padding: EdgeInsets.all(16),
            ),
            Container(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ))),
              ),
              width: 280,
              padding: EdgeInsets.all(16),
            ),
            RaisedButton(
              onPressed: () {
                validateTextField(context);
              },
              child: Text('Submit'),
              color: Colors.blue[900],
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  void validateTextField(BuildContext context) {
    print(user);
    print(password);
  }
}
