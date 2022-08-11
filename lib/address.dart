import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'manage_address.dart';

class addresscreen extends StatelessWidget {
  const addresscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("address"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Text("home"),
            subtitle: Text("12,Flutter club,Earth 091234"),
            trailing: IconButton(
              icon: Icon(Icons.edit_outlined),
              onPressed: (){
                Get.to(manageaddress());
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Get.to(manageaddress());
        },
      ),
    );
  }
}
