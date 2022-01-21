import 'package:daily_news/models/source.dart';
import 'package:flutter/material.dart';

class ItemSource extends StatelessWidget {
  const ItemSource({
    Key? key,
    required this.source,
    required this.callback,
  }) : super(key: key);

  final Source source;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Card(
        margin: const EdgeInsets.only(right: 16.0),
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(color: Colors.grey),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Text(
            source.name,
            style: const TextStyle(fontSize: 16.0, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
