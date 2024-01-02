
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/provide/provider_count.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  void initState() {
    super.initState();
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      countProvider.setCount();

    });
  }
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Count'),),
      body: Center(
        child:Consumer<CountProvider>(builder: (context,value,child){
          return  Text(
            countProvider.count.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
           );
        },)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },child: Icon(Icons.add),
      ),
    );
  }
}
