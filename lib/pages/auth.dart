import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;

  String _passwordValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Password'),
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            onChanged: (String value) {
              setState(() {
                _emailValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Password'),
            autofocus: true,
            onChanged: (String value) {
              setState(() {
                _passwordValue = value;
              });
            },
          ),
          RaisedButton(
            child: Text('LOGIN'),
            onPressed: () => Navigator.of(context).pushReplacementNamed('/'),
          ),
        ],
      ),
    );
  }
}
