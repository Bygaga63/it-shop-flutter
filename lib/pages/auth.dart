import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'E-Mail'),
              keyboardType: TextInputType.emailAddress,
              onChanged: (String value) {
                setState(() {
                  _emailValue = value;
                });
              },
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
              onChanged: (String value) {
                setState(() {
                  _passwordValue = value;
                });
              },
            ),
            SwitchListTile(
              onChanged: (bool value) {
                setState(() {
                  _acceptTerms = value;
                });
              },
              value: _acceptTerms,
              title: Text('Accept Terms'),
            ),
            SizedBox(height: 10.0),
            RaisedButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Text('LOGIN'),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/');
                }),
          ],
        ),
      ),
    );
  }
}
