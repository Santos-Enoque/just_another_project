import 'package:flutter/material.dart';
import 'package:food_app_course/scr/widgets/custom_text.dart';
class BottomNavIcon extends StatelessWidget {
  final String image;
  final String name;


  BottomNavIcon({@required this.image,@required this.name});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.asset("images/$image", width: 18, height: 18,),
          SizedBox(height: 1,),
          CustomText(text: name, size: 14,)
        ],
      ),
    );
  }
}
