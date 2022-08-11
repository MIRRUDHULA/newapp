import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:userapp/welcome.dart';
import 'package:untitled7/welcome.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage("https://images.pexels.com/photos/1580272/pexels-photo-1580272.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                    ,scale: 1.0),
              ),

              SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: InputBorder.none,
                  labelText: "email address",
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
                  labelText: "mobile no",
                ),
              ),
              SizedBox(height: 12,),
              Container(
                height: 48,
                width: double.infinity,
                child:ElevatedButton(child: Text("save changes"),onPressed: (){
                  Get.back();
                },),
              ),
              SizedBox(height: 12,),
              Container(
                child: TextButton(child: Text("logout"),
                  onPressed: (){
                    Get.offAll(welcomescreeen());
                  },),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
