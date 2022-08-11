import 'package:flutter/material.dart';

import 'cart_items.dart';

class cartscreen extends StatelessWidget {
  //const cartscreen({Key? key}) : super(key: key);
  List _cartItems = [
    {
      "imageURL": "assets/product/p11.jfif",
      "title": "Carrot",
      "qty": 1,
      "price": 20,
      "total": 20,
    },
    {
      "imageURL":"assets/product/p12.jfif",
      "title":"raw meat",
      "qty": 2,
      "price": 320,
      "total": 640,
    },
    {
      "imageURL": "assets/product/p13.jfif",
      "title": "Orange",
      "qty": 1,
      "price": 170,
      "total": 170,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cart"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child:ListView.builder(
                  itemCount: _cartItems.length,
                  itemBuilder: (bc,index){
                    return cartitem(
                      imageurl: _cartItems[index]["imageURL"],
                      title: _cartItems[index]["title"],
                      price: _cartItems[index]["qty"],
                      qty: _cartItems[index]["price"],
                      total: _cartItems[index]["total"],
                    );
                  },
                )
            ),
            ListTile(
              title: Text("delivery address"),
              subtitle: Text("13,flutter club,earth-0002"),
              trailing: TextButton(
                child: Text("change"),
                onPressed: (){},
              ),
            ),
            ListTile(
              title: Text("payment method"),
              subtitle: Text("cash on delivery"),
              trailing: TextButton(
                child: Text("change"),
                onPressed: (){},
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 0,),
                child: Text("checkout (830)"),
                onPressed: (){},
              ),
            )
          ],
        ),
      ),
    );
  }
}
