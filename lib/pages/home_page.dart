import 'package:boba_tea/components/bottom_nav_bar.dart';
import 'package:boba_tea/pages/cart_page.dart';
import 'package:boba_tea/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{

  int _selectedIndex=0;
  void navigateBottomBar(int newIndex){
    setState((){
      _selectedIndex=newIndex;
    });
  }

  final List<Widget> _pages=[
    const ShopPage(),

    const CartPage(),
  ];




  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.brown[200],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange:(index)=>navigateBottomBar(index),
      ),
      body:_pages[_selectedIndex],
    );
  }
}