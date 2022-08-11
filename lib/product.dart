import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class product extends StatelessWidget {
  //const product({Key? key}) : super(key: key);
  String imageurl;
  String title;
  double price;

  product({required this.imageurl,required this.title,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Align(
            child: Container(
              height: double.infinity,width: double.infinity,

              //child: Image.asset(imageurl,fit: BoxFit.cover,),
              child: Image.network(imageurl,fit: BoxFit.cover,),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.black.withOpacity(0.4),
              padding: EdgeInsets.only(left: 4,right: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("$title",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),),
                        Text("$price",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,)),
                      ],
                    ),
                  ),
                  //    alignment: Alignment.bottomLeft,
                  ElevatedButton(
                    child: Icon(Icons.add),
                    onPressed: (){},
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
