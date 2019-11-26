import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/style.dart';
import 'package:food_app_course/scr/models/products.dart';
import 'package:food_app_course/scr/widgets/custom_text.dart';
import 'package:food_app_course/scr/widgets/small_floating_button.dart';


class Details extends StatefulWidget {
  final Product product;


  Details({@required this.product});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 300,
              child: Stack(
                children: <Widget>[
                  Carousel(
                    images: [
                      AssetImage('images/${widget.product.image}'),
                      AssetImage('images/${widget.product.image}'),
                      AssetImage('images/${widget.product.image}'),
                    ],
                    dotBgColor: white,
                    dotColor: grey,
                    dotIncreasedColor: red,
                    dotIncreaseSize: 1.2,
                    autoplay: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: black,),
                        onPressed: () {Navigator.pop(context);},
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: <Widget>[
                                  Image.asset("images/shopping-bag.png", width: 30, height: 30,),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 5,
                              bottom: 0,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: grey,
                                            offset: Offset(2, 1),
                                            blurRadius: 3
                                        )
                                      ]
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 4, right: 4),
                                    child: CustomText(text: "2", color: red, size: 18, weight: FontWeight.bold,),
                                  )),
                            ),

                          ],
                        ),
                      ),
                      
                    ],
                  ),
                  Positioned(
                    right: 20,
                    bottom: 55,
                    child: Container(
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: grey[400],
                              offset: Offset(2, 1),
                              blurRadius: 3
                            )
                          ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Icon(
                            Icons.favorite,
                            size: 22,
                            color: red,
                          ),
                        )),
                  )
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomText(text: widget.product.name, size: 26, weight: FontWeight.bold,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomText(text: "\$" + widget.product.price.toString(), size: 20,color: red, weight: FontWeight.w600,),
              ],
            ),

            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.remove, size: 36,), onPressed: (){}),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      color: red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(28, 12, 28, 12),
                      child: CustomText(text: "Add To 1 Cart", color: white, size: 24, weight: FontWeight.w600,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.add, color: red,size: 36,), onPressed: (){}),
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: red))
                      ),
                      child: Text("DETAILS",style: TextStyle(fontSize: 22, color: red, fontWeight: FontWeight.w500),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: CustomText(text: "Review", color: grey, size: 18,),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left:20, right: 20),
              child: Text(widget.product.details,style: TextStyle(letterSpacing: 2, fontSize: 17, color: grey, fontWeight: FontWeight.w400),)
            ),

        SizedBox(
        height: 15,
      ),

          ],
        ),
      ),
    );
  }
}
