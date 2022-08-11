import 'package:flutter/material.dart';

class orders extends StatelessWidget {
  //const orders({Key? key}) : super(key: key);
  Map orderobj;
  orders({required this.orderobj});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("#${orderobj["id"]}-${orderobj["status"]}"),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text("order"),
              subtitle: Text("${orderobj["dateString"]}"),
              trailing: Text("${orderobj["id"]}"),
            ),
            ListTile(
              title: Text("status"),
              subtitle: Text("${orderobj["status"]}"),

            ),
            ListTile(
              title: Text("delivery"),
              subtitle: Text("${orderobj["deliveryAddress"]}"),
              trailing: Text("${orderobj["paymentMethod"]}"),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 8),
              padding: EdgeInsets.only(left: 12),
              child: Text(
                "CART ITEMS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.green),
              ),
            ),
            Expanded(child: Container(
              child: ListView.builder(
                itemCount: orderobj["cartItems"].length,
                itemBuilder: (bc,index){
                  return ListTile(
                    title: Text("${orderobj["cartItems"][index]["title"]}"),
                    subtitle: Text("${orderobj["cartItems"][index]["qty"]} * ${orderobj["cartItems"][index]["price"]}"),
                    trailing: Text("${orderobj["cartItems"][index]["total"]}"),
                  );
                },
              ),
            )),
            Container(
              color: Colors.green,
              height:80,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //  crossAxisAlignment: CrossAxisAlignment.spaceBetween,
                children: [
                  Text("total",style: TextStyle(color: Colors.white),),
                  Text("123",style: TextStyle(color: Colors.white),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
