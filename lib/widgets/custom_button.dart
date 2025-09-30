import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.title});
   
 String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(title)),
      width: double.infinity,
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
