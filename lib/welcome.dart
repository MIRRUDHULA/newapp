import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_widget_welcome.dart';
import 'login.dart';

class welcomescreeen extends StatelessWidget {
  const welcomescreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: double.infinity,
                  ),
                  items: [

                    welcomewidget(
                      image: "https://tse3.mm.bing.net/th?id=OIP.AE5BITw9Rn3pxuZEyfEK_gHaJq&pid=Api&P=0",
                      title: "A woman who cuts her hair is about to change her life.",
                      subtitle: "Get fresh food for your family",
                    ),
                    welcomewidget(
                      image: "https://tse4.mm.bing.net/th?id=OIP.KLyTW6OeDJhDuSx8HjCevwHaJF&pid=Api&P=0",
                      title: "Happiness is a new haircut.",
                      subtitle: "don't wait register soon",
                    ),
                    welcomewidget(
                      image: "https://tse4.mm.bing.net/th?id=OIP.3KtZr7CKdd1G_OHf9lQJ6AHaMI&pid=Api&P=0",
                      title: "Experience the barbershop that feels like home",
                      subtitle: "Be safe",
                    ),

                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text("Getting Started",
                  style: TextStyle(
                    fontSize:20,
                  ),),
                onPressed: (){
                  Get.to(loginscreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
