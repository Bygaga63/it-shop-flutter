import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage({this.title, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('onWillPop pressed');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Product Detail'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Text(title),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Delete'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            )
          ],
        ),
      ),
    );
  }
}
