
import 'package:flutter/material.dart';

class StatefulScreen extends StatefulWidget {
  const StatefulScreen({super.key});

  @override
  State<StatefulScreen> createState() => _StatefulScreenState();
}

class _StatefulScreenState extends State<StatefulScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(
                child: Text(
                  count.toString(),style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold),)),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          

        },child: Icon(Icons.add),
      ),
    );
  }
}
