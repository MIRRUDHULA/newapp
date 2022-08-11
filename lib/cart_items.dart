import 'package:flutter/material.dart';

class cartitem extends StatelessWidget {
  //const cartitem({Key? key}) : super(key: key);
  String imageurl;
  String title;
  int qty;
  int price;
  int total;
  cartitem(
      {required this.imageurl,
        required this.title,
        required this.qty,
        required this.price,
        required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                        child: Image.asset(
                          "$imageurl",
                          height: 60,
                          width: 60,
                        ))),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$title",style: TextStyle(fontSize: 20,),),
                  Text("$qty * $price"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  RawMaterialButton(
                    fillColor: Colors.green,
                    elevation: 0,
                    padding: EdgeInsets.all(4),
                    child: Icon(Icons.add,color: Colors.white,size: 16,),
                    onPressed: (){},
                    shape: CircleBorder(),
                    constraints: BoxConstraints(),
                  ),
                  Text("$qty"),
                  RawMaterialButton(
                    fillColor: Colors.green,
                    elevation: 0,
                    padding: EdgeInsets.all(4),
                    child: Icon(Icons.remove,color: Colors.white,size: 16,),
                    onPressed: (){},
                    shape: CircleBorder(),
                    constraints: BoxConstraints(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 12),
            child: Text("$total",style: TextStyle(fontSize: 12),),
          ),
        ],
      ),
    );
  }
}
