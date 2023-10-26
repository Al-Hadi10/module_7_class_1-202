import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Text('Home', style: TextStyle(
              fontSize: 24,
            ),),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingScreen(),
                  ),
                );
              },
              child:
              Text('GO to Setting'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderScreen(),
                  ),
                );
              },
              child: Text('Go to Orders'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductListScreen(),
                  ),
                );
              },
              child: Text('Go to Product List'),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Setting '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Text('Setting ', style: TextStyle(
              fontSize: 24,
            ),)
          ],
        ),
      ),
    );
  }
}
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Orders'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Text('Orders', style: TextStyle(
              fontSize: 24,
            ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingScreen(),
                  ),
                );
              },
              child: Text('Go to Setting'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: 20,

          itemBuilder: (context, index) {
        return ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProductDetailsScreen(productName: index.toString());
                })).then((value){
                  print(value);
            });
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => ProductDetailsScreen(productName: index.toString()),
            //   ).then((value) {
            //     print(value);
            //   } ),
            // );
              },
          title: Text(index.toString()),
          subtitle: Text('Product Details $index'),
        );
      }),
    );
  }
}
class ProductDetailsScreen extends StatelessWidget {
  final String productName;
  const ProductDetailsScreen({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(productName, style: TextStyle(
              fontSize: 34
            ),),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,'My-Name-$productName');
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}



