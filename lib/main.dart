import 'package:boba_tea/models/shop.dart';
import 'package:boba_tea/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create:(context)=>BubbleTeaShop(),
      builder:(context,child)=> MaterialApp(
        debugShowCheckedModeBanner:false,
        theme:ThemeData(primarySwatch:Colors.brown),
        home:const HomePage(),
      )
    );
  }
}