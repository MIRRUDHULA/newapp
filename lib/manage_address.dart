import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class manageaddress extends StatelessWidget {
  const manageaddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("manage_address"),
      ),
      body: SingleChildScrollView(
        //  child: Container(
        // padding: EdgeInsets.all(32),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 200,
                width: double.infinity,
                //child: Image.asset("assets/icon/i5.webp",fit: BoxFit.cover,)
              child:Image.network("https://tse4.mm.bing.net/th?id=OIP.ZPKuUY0mrE5VBDOS1oAuAQHaEF&pid=Api&P=0",fit: BoxFit.cover,)
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(32),
              child:Column(
                children: [



                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: InputBorder.none,
                      labelText: "Tag(Eg:Home,office)",
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: InputBorder.none,
                      labelText: "full name",
                    ),
                  ),
                  SizedBox(height: 12,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: InputBorder.none,
                      labelText: "mobile number",
                    ),
                  ),
                  SizedBox(height: 12,),
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: InputBorder.none,
                      labelText: "full address",
                    ),
                  ),
                  SizedBox(height: 12,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: InputBorder.none,
                      labelText: "pincode",
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    height: 48,
                    width: double.infinity,
                    child:ElevatedButton(child: Text("save changes"),onPressed: (){},),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),


    );
  }
}
