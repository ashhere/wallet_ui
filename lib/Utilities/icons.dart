import 'package:flutter/material.dart';

class IconsButtons extends StatelessWidget {
  final String iconsImage;
  final iconBoxColor;
  const IconsButtons({super.key,required this.iconsImage, required this.iconBoxColor,});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(15),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color:iconBoxColor,
              // Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(blurRadius: 15,spreadRadius: 2,color: Colors.grey.shade300)]
            ),
            child: Image.asset(
              'icons/$iconsImage',
            ),
          );
  }
}

class iconText extends StatelessWidget {
  final String name;
  const iconText({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return  Text(
                    name,
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold),
                  );
  }
}