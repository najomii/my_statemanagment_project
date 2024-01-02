
import 'package:flutter/material.dart';

class Favoritemy extends StatefulWidget {
  const Favoritemy({super.key});

  @override
  State<Favoritemy> createState() => _FavoritemyState();
}

class _FavoritemyState extends State<Favoritemy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite My '),
        actions: [
          InkWell(
            onTap: (){

            },
              child: Icon(Icons.favorite)),
          SizedBox(width: 20,)

        ],
      ),
    );
  }
}
