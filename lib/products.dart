import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct}) {
    print('[Products Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Column(
            children: <Widget>[
              Image.asset(products[index]['image']),
              Text(products[index]['title']),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text('Details'),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed<bool>('/product/$index')
                          .then((shouldRemove) {
                        if (shouldRemove) {
                          deleteProduct(index);
                        }
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        );
      },
      itemCount: products.length,
    );
  }
}
