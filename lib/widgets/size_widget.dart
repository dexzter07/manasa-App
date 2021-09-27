
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manasa/configs/styles/custom_text_style.dart';

import 'custom_text_widget.dart';

class SizeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:Colors.grey[200],
          border: Border.all(color: Colors.deepOrangeAccent,width: 2)
      ),

    );
  }
}
