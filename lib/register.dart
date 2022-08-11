import 'package:flutter/material.dart';
import 'package:get/get.dart';

class registerpage extends StatelessWidget {
  const registerpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color:Colors.green),
        title: Text("create an account",
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.green),),),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Image.asset("assets/icon/i2.webp"),
              Image.network("https://tse1.mm.bing.net/th?id=OIP.7NZkDrxKbMyZpD3M6LMnrAHaM7&pid=Api&P=0",height: 400,),
              SizedBox(height: 20,),
              Text("online shop",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
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
                  labelText: "password",
                ),
              ),
              SizedBox(height: 12,),
              Container(
                height: 48,
                width: double.infinity,
                child:ElevatedButton(child: Text("register"),onPressed: (){},),
              ),
              SizedBox(height: 12,),
              Container(
                child: TextButton(child: Text("already have an account?"),
                  onPressed: (){Get.back();},),
              ),
              Container(
                // height: double.infinity,
                // width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    ElevatedButton(
                        style:ElevatedButton.styleFrom(primary: Colors.transparent,elevation: 0),
                        onPressed:(){},
                        //child: Image.asset("assets/icon/i3.png",height: 32,)
                      child: Image.network("https://tse2.mm.bing.net/th?id=OIP.JfHq8KY_OpbJF4Twj7SZ3wEIDs&pid=Api&P=0",height: 32,),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.transparent,elevation: 0),
                        onPressed: (){},
                        //child: Image.asset("assets/icon/i4.jpg",height: 32,)
                      child: Image.network("https://tse2.mm.bing.net/th?id=OIP.zi9fQV4mFU9dhtOKLie6WgHaEK&pid=Api&P=0",height: 32,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );



  }
}
