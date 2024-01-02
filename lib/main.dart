import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/homeScreen.dart';
import 'package:statemanagement/provide/favorite_provider.dart';
import 'package:statemanagement/provide/provider_count.dart';
import 'package:statemanagement/provide/provider_one.dart';
import 'package:statemanagement/provide/screens/count_example.dart';
import 'package:statemanagement/provide/screens/example_one.dart';
import 'package:statemanagement/provide/screens/favoritemy/favorite_screen.dart';
import 'package:statemanagement/stateful_screen.dart';
import 'package:statemanagement/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>CountProvider()),
          ChangeNotifierProvider(create: (_)=> ExampleOneProvider()),
          ChangeNotifierProvider(create: (_)=> FavoriteProvider()),

          // ChangeNotifierProvider(create: (_)=>FavoriteScreen())




    ],
    child:  MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: HomeScreen()
        //home:CountExample()
      home:FavoriteScreen(),
    ),);

  }
}
