import 'package:flutter/material.dart';
import 'package:food_app_course/scr/widgets/custom_text.dart';
class BottomNavIcon extends StatelessWidget {
  final String image;
  final String name;
  final Function onTap;


  BottomNavIcon({@required this.image,@required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap ?? null,
        child: Column(
          children: <Widget>[
            Image.asset("images/$image", width: 18, height: 18,),
            SizedBox(height: 1,),
            CustomText(text: name, size: 14,)
          ],
        ),
      ),
    );
  }
}
