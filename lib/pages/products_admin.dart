import 'package:flutter/material.dart';
import 'package:flutter_view/pages/product_create.dart';
import 'package:flutter_view/pages/product_list.dart';
import 'package:flutter_view/pages/products.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                title: Text('Choose'),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => ProductsPage()));
                },
                title: Text('All Products'),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Manage Products'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Create product',
                icon: Icon(
                  Icons.create,
                  semanticLabel: 'Foo',
                ),
              ),
              Tab(
                text: 'My Products',
                icon: Icon(Icons.list),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(),
            ProductListPage(),
          ],
        ),
      ),
    );
  }
}
