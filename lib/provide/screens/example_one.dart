
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/provide/provider_one.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
 // double value = 1.0;
  @override
  Widget build(BuildContext context) {
   // final provider = Provider.of<ExampleOneProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Example one'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context,value,child){
            return  Slider(
                min: 0,
                max: 1,
                value:value.value, onChanged: (val){
              //value = val;
              value.setValue(val);

            }
            );


          }),
          Consumer(builder: (context,value,child){
            return  Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    decoration:   BoxDecoration(
                     //   color: Colors.cyan.withOpacity(value:value)
                    ),
                    child: Center(
                      child: Text('Container 1'),
                    ),

                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    decoration:   BoxDecoration(
                     // color: Colors.purple.withOpacity(value.value),
                    ),
                    child: Center(
                      child: Text('Container 2'),
                    ),

                  ),
                ),
              ],
            );
          })



        ],
      ),
    );
  }
}
