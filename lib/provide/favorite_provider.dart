import 'package:flutter/cupertino.dart';

class FavoriteProvider with ChangeNotifier{
  List<int> _selectedItem = [];
  List<int> get selectedItem=>_selectedItem;
  void  addItem(int value){
    _selectedItem.add(value);
  }
  void  removeItem(int value){
    _selectedItem.remove(value);
  }

}

