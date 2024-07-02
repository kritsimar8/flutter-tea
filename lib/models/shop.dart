import 'package:boba_tea/models/drink.dart';
import 'package:flutter/material.dart';

class BubbleTeaShop extends ChangeNotifier{
  final List<Drink> _shop=[
    Drink(name:"Pearl Milk Tea",price:"4.00", imagePath:"lib/images/bubble-tea.png"),
    Drink(name:"Taro Milk Tea",price:"4.00", imagePath:"lib/images/milk-tea.png"),
    Drink(name:"Green Tea",price:"4.00", imagePath:"lib/images/green-tea.png"),
    Drink(name:"Cream Tea",price:"4.00", imagePath:"lib/images/cream-tea.png"),
    Drink(name:"Choco Tea",price:"4.00", imagePath:"lib/images/choco-tea.png"),
  ];
  
  final List<Drink> _userCart=[];

  List<Drink> get shop => _shop;

  List<Drink> get cart =>_userCart;

  void addToCart(Drink drink){
    _userCart.add(drink);
    notifyListeners();
  }
  void removeFromCart(Drink drink){
    _userCart.remove(drink);
    notifyListeners();
  }
}