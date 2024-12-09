// Widget do título "Ateliê Laranja"
import 'package:flutter/material.dart';

Widget buildTitle() {
  return Column(
    children: [
      Text(
        'Ateliê',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange,
          fontFamily: 'BrushScript',
        ),
      ),
      Text(
        'Laranja',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Colors.green[800],
          fontFamily: 'BrushScript',
        ),
      ),
    ],
  );
}
