import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    Key? key,
    required this.nameCategory,
    required this.width,
    required this.height,
  }) : super(key: key);

  final String nameCategory;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
          color: Color.fromARGB(Color.getAlphaFromOpacity(0.5), 255, 255, 255),
      ),
      alignment: Alignment.center,
      child: Text(
        nameCategory,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 13.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
