import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//import 'package:userapp/category.dart';
//import 'package:userapp/product.dart';
import 'package:untitled7/category.dart';
import 'package:untitled7/product.dart';

class homescreen extends StatelessWidget {
  //const homescreen({Key? key}) : super(key: key);
  List _products = [
    {
      "imageURL": "https://tse3.mm.bing.net/th?id=OIP.WkibaGu7B4pMPdNjFHZMegHaJL&pid=Api&P=0",
      "title": "pixie cut",
      "price": 40.0,
    },
    {
      "imageURL": "https://tse3.mm.bing.net/th?id=OIP.t-Fe055tj8wdUfFHePPiTQHaLH&pid=Api&P=0",
      "title": "Bob",
      "price": 30.0,
    },
    {
      "imageURL": "https://tse3.mm.bing.net/th?id=OIP.1ntM87Ah6Cg4t5Xy6BbO6AHaJS&pid=Api&P=0",
      "title": "Long Wavy hair",
      "price": 400.0,
    },
    {
      "imageURL": "https://tse3.mm.bing.net/th?id=OIP.yymIM95byzZanKPuJueEggAAAA&pid=Api&P=0",
      "title": "Fabio Salsa",
      "price": 60.0,
    },
    {
      "imageURL": "https://tse4.mm.bing.net/th?id=OIP.c1-w3BbZDHIOkaeruND91AHaH6&pid=Api&P=0",
      "title": "wave cut curly",
      "price": 320.0,
    },
    {
      "imageURL": "https://tse1.mm.bing.net/th?id=OIP.pXz64FWwj4Q7DjkoXNCCkAHaId&pid=Api&P=0",
      "title": "Red cut",
      "price": 180.0,
    },

  ];



  List _categories=[
    "all",
    "girls",
    "mens",
    "women",
    "childern",
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                options:CarouselOptions(autoPlay: true),
                items: [
                  Container(
                    //child: Image.asset("assets/product/o1.jfif"),
                    child:Image.network("https://tse3.explicit.bing.net/th?id=OIP.tmRoHKvdSCOMK_wsJNZdfgHaDW&pid=Api&P=0"),
                    padding: EdgeInsets.all(4),
                  ),
                  Container(
                    //child: Image.asset("https://tse3.mm.bing.net/th?id=OIP.8wDB5PNgFAqUhGanxlonxQHaD5&pid=Api&P=0"),
                    child:Image.network("https://tse3.mm.bing.net/th?id=OIP.8wDB5PNgFAqUhGanxlonxQHaD5&pid=Api&P=0") ,
                    padding: EdgeInsets.all(4),
                  ),
                  Container(
                   // child: Image.asset("https://tse1.mm.bing.net/th?id=OIP.3r0ZXLx1dN7PFxRCAg_vBAHaHa&pid=Api&P=0"),
                    child: Image.network("https://tse1.mm.bing.net/th?id=OIP.3r0ZXLx1dN7PFxRCAg_vBAHaHa&pid=Api&P=0"),
                    padding: EdgeInsets.all(4),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              child: ListView.builder(
                itemCount: _categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (bc,index){
                  return category(title:"${_categories[index]}");
                },
              ),
            ),
            Container(
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: _products.length,
                itemBuilder: (bc,index){
                  return  product(
                    imageurl: _products[index]["imageURL"],
                    title: _products[index]["title"],
                    price: _products[index]["price"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
