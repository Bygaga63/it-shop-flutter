import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage({this.addProduct});

  @override
  _ProductCreatePageState createState() => _ProductCreatePageState();
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue = '';
  String descriptionValue = '';
  double priceValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String value) => setState(() => titleValue = value),
              decoration: InputDecoration(labelText: 'Product Title'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Description'),
              onChanged: (String value) =>
                  setState(() => descriptionValue = value),
              maxLines: 4,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Price'),
              onChanged: (String value) =>
                  setState(() => priceValue = double.parse(value)),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10.0),
            RaisedButton(
              textColor: Colors.white,
              color: Theme.of(context).accentColor,
              onPressed: () {
                Map<String, dynamic> product = {
                  'title': titleValue,
                  'description': descriptionValue,
                  'price': priceValue,
                  'image': 'assets/food.jpg'
                };

                widget.addProduct(product);
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
