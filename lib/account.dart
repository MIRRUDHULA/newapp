import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:userapp/profile.dart';
import 'package:untitled7/profile.dart';

import 'address.dart';
import 'orders.dart';

class accountscreen extends StatelessWidget {
  const accountscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("account"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              // radius: 60,
              backgroundImage: NetworkImage("https://images.pexels.com/photos/1580272/pexels-photo-1580272.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                  ,scale: 1.0),
            ),
            title: Text("sairam"),
            subtitle: Text("+919626920415"),
            trailing: TextButton(child: Text("edit"),onPressed: (){
              Get.to( profilescreen());
            },),
          ),

          ListTile(
              leading: Icon(Icons.notifications_outlined,color: Colors.green,),
              title: Text("notification"),
              subtitle: Text("turn on/off the notification"),
              trailing: Switch(onChanged: (i) {  }, value: true,

              )
          ),

          ListTile(
            onTap: (){Get.to(orderscreen());},
            leading: Icon(Icons.shopping_bag_outlined,color: Colors.green,),
            title: Text("my order"),
            subtitle: Text("manage order"),
            trailing: Icon(Icons.arrow_forward,color: Colors.green,),


          ),

          ListTile(
            onTap:(){ Get.to(addresscreen());},
            leading: Icon(Icons.note_outlined,color: Colors.green,),
            title: Text("my address"),
            subtitle: Text("manage address"),
            trailing: Icon(Icons.arrow_forward,color: Colors.green,),


          ),
        ],
      ),
    );
  }
}
