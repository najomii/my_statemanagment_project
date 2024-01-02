
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/favoritemy.dart';
import 'package:statemanagement/provide/favorite_provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<int> selectedItem = [];
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    return  Scaffold(
        appBar: AppBar(
        title: Text('Favorite My '),
    actions: [
    InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Favoritemy()));

    },
    child: Icon(Icons.favorite)),
    SizedBox(width: 20,)

    ],),
      body: Column(
        children: [
          Expanded(

            child: ListView.builder(
              itemCount: 100,
                itemBuilder: (context,index){
                return Consumer<FavoriteProvider>(builder:(context,value,child){
                  return  ListTile(
                    onTap: (){
                      favoriteProvider.addItem(index);
                      //selectedItem.add(index);
                      if(value.selectedItem.contains(index)){
                        value.removeItem(index);
                      }else{
                        value.addItem(index);

                      }



                    },
                    title: Text('Item'+index.toString(),
                    ),
                    trailing: Icon(selectedItem.contains(index)?Icons.favorite:Icons.favorite_border),
                  );
                } );

            }),
          )

        ],
      ),
    );
  }
}
