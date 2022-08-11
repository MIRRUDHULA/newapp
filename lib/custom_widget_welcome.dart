import 'package:flutter/material.dart';
class welcomewidget extends StatelessWidget {
  //const welcomewidget({Key? key}) : super(key: key);
  String image;
  String title;
  String subtitle;
  welcomewidget({required this.image,required this.title,required this.subtitle});



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Image.asset(image,scale: 1.0,
           // height: 400,),
          Image.network(image,scale: 1.0,height: 400,),
          SizedBox(height: 4,),
          Text(title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            )
            ,),
          SizedBox(height: 4,),
          Text(subtitle),
        ],
      ),
    );
  }
}
