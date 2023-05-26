import 'package:flutter/material.dart';

class CustomWhiteContainer extends StatelessWidget {
  const CustomWhiteContainer(
      {super.key, this.height, this.width, required this.child});

  final double? height;
  final double? width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: const Offset(5, 5)),
          const BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(-5, -5),
          ),
        ],
      ),
      child: child,
    );
  }
}
