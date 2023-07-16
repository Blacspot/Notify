import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      height: 70,
      decoration: BoxDecoration(
          color: Colors.blue,
          gradient: const LinearGradient(colors: [
            Color(0xFFE26C5C),
            Color(0xFF1041F9),
          ]),
          borderRadius: BorderRadius.circular(25)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        Icon(
          Icons.arrow_forward_outlined,
          color: Colors.white,
        )
      ]),
    );
  }
}
