import 'package:boba_tea/components/drink_tile.dart';
import 'package:boba_tea/models/drink.dart';
import 'package:boba_tea/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget{
  const CartPage({super.key});

  @override
  State<CartPage> createState()=> _CartPageState();
}

class _CartPageState extends State<CartPage>{

  void removeFromCart(Drink drink){
    Provider.of<BubbleTeaShop>(context,listen:false).removeFromCart(drink);
  }
  @override 
  Widget build(BuildContext context){
    return Consumer<BubbleTeaShop>(
      builder:(context,value,child)=>SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(25.0),
          child:Column(
            children:[
              const Text(
                'Your Cart',
                style:TextStyle(fontSize:20),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount:value.cart.length,
                  itemBuilder:(context,index){
                    Drink drink = value.cart[index];

                    return DrinkTile(
                      drink:drink,
                      onTap:() => removeFromCart(drink),
                      trailing:Icon(Icons.delete),
                    );
                  }
                   
                )
              ),
              MaterialButton(
                child:Text('PAY',style:TextStyle(color:Colors.white),),
                color:Colors.brown,
                onPressed:(){},
              )
            ]
          )
        )
    ) 
    );
  }
}