import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onClicked, required this.text});
  final Function()? onClicked;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClicked,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
