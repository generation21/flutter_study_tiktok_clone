import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/sizes.dart';

class AuthButtons extends StatelessWidget {
  final String text;
  final FaIcon icon;
  final VoidCallback onPressed;

  const AuthButtons({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Container(
          padding: const EdgeInsets.all(Sizes.size14),
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.grey.shade300,
            width: Sizes.size1,
          )),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: icon,
              ),
              Text(
                  textAlign: TextAlign.center,
                  text,
                  style: const TextStyle(
                      fontSize: Sizes.size16, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
