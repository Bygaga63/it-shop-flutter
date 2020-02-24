import 'package:flutter/material.dart';
import 'package:flutter_view/pages/products.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('LOGIN'),
            onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => ProductsPage()),
                )),
      ),
    );
  }
}
