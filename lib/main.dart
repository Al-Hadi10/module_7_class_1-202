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
      theme: ThemeData(
        primaryColor: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            //foregroundColor: Colors.pink,
            //backgroundColor: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            elevation: 5,
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.6,
              wordSpacing: 0.5
            )
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            backgroundColor: Colors.deepOrange,
             // foregroundColor: Colors.deepOrange
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          elevation: 5,
          shadowColor: Colors.green,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 18
          ),
          bodySmall: TextStyle(
            fontSize: 12
          ),
          bodyLarge: TextStyle(
            fontSize:22
          ),
        )
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amberAccent,
          elevation: 5,
          shadowColor: Colors.amberAccent
        )
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World'),
            Text('Hello World',style: Theme.of(context).textTheme.bodySmall,),
            Text('Hello World',style: Theme.of(context).textTheme.bodyLarge,),
            Text('Hello World',style: Theme.of(context).textTheme.bodyMedium,),
            Text('Hello World'),
            TextButton(onPressed: (){}, child: Text('Tap Here'),),
            TextButton(onPressed: (){}, child: Text('Tap Here'),),
            TextButton(onPressed: (){}, child: Text('Tap Here'),),
            ElevatedButton(onPressed: (){},
              child: Text('Tap Here'),),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                   // backgroundColor: Colors.red
                ),
            onPressed: (){},
              child: Text('Tap Here'),),
          ],
        ),
      ),
    );
  }
}