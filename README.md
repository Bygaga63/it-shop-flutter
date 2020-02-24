# flutter_view

####Работа с роутингом
Контекст можно передавать двумя способами, либо сразу через метод навиготора, либо через статический метод .of
```
    Navigator.push(context, MaterialPageRoute(builder: (context) => Widget()));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Widget()));
```
*Navigator* можно представить как stack, в который с помощью метода *push* ты 
кладешь следующий переход, а с помощью метода *pop*, удаляешь, тем самым возвращаешься назад.
```
    Navigator.of(context).pop();
```
*MaterialPageRoute* нужен для того что бы анимировать переходы на другие страницы. 
Для ios анимация будет характерная для ios устройств, для android своя.
```
    MaterialPageRoute(builder: (context) => Widget());
```

В *AppBar* по умолчанию после перехода появится кнопка назад. Если переходить назад не нужно, можно воспользоваться методом:
```
    Navigator.of(context).pushReplacement(MaterilPageRoute(builder: (context) => Widget());
```

Передавать аргументы во время перехода на другой роут можно так:
```
    MaterialPageRoute(builder: (context) => Widget(label: 'FooBar'));
```

Метод *pop* принимает аргумент и может возвращать любое значение обратно. 
*push* возвращает Future. Это значение можно получить там:
```
    Navigator.of(context).pop({'success': true})                                  // в 1-м компоненте
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => ProductPage(     // во 2-м компоненте
                                      title: products[index]['title'],
                                      imageUrl: products[index]['image'],
    )))
    .then((shouldRemove) {
      if (shouldRemove) {
      deleteProduct(index);
    }
    });
```

#### Работа с табами:
Нужно обернуть странцу в *DefaultTabController* и задать обязательное свойство *length*
Далее добавить *TabBar* и закинуть туда Tab равные длине.
*TabBarView* отвечает за страницы отображения.
```
    DefaultTabController(
          length: 2,
          child: Scaffold(
          appBar: AppBar(
                    bottom: TabBar(
                      tabs: <Widget>[
                        Tab(text: 'Create product'),
                        Tab(text: 'My Products')
           body: TabBarView(
             children: <Widget>[
              ProductCreatePage(),
              ProductListPage(),
          ],                   
          ....);     
```