import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage({this.addProduct});

  @override
  _ProductCreatePageState createState() => _ProductCreatePageState();
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String _titleValue = '';
  String _descriptionValue = '';
  double _priceValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String value) => setState(() => _titleValue = value),
              decoration: InputDecoration(labelText: 'Product Title'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Description'),
              onChanged: (String value) =>
                  setState(() => _descriptionValue = value),
              maxLines: 4,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Price'),
              onChanged: (String value) =>
                  setState(() => _priceValue = double.parse(value)),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10.0),
            RaisedButton(
              textColor: Colors.white,
              color: Theme.of(context).accentColor,
              onPressed: () {
                Map<String, dynamic> product = {
                  'title': _titleValue,
                  'description': _descriptionValue,
                  'price': _priceValue,
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
