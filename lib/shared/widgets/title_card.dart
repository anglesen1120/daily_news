import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    Key? key,
    required this.nameCategory,
  }) : super(key: key);

  final String nameCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
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
