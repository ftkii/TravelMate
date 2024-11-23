import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name;
  final Function()? onTap;
  const Button({
    Key? key,
    required this.name,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
        child: Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
            color: Color(0xff4A6670), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
