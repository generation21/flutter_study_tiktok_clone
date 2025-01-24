import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';

class InterestButton extends StatefulWidget {
  const InterestButton({
    super.key,
    required this.interest,
  });

  final String interest;

  @override
  State<InterestButton> createState() => _InterestButtonState();
}

class _InterestButtonState extends State<InterestButton> {
  bool _isSelected = false;

  void _onTap() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size16,
          horizontal: Sizes.size24,
        ),
        decoration: BoxDecoration(
            color: _isSelected ? Theme.of(context).primaryColor : Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha((255 * 0.05).toInt()),
                blurRadius: Sizes.size5,
                spreadRadius: Sizes.size5,
              ),
            ],
            borderRadius: BorderRadius.circular(Sizes.size32),
            border: Border.all(color: Colors.black12)),
        child: Text(widget.interest,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: _isSelected ? Colors.white : Colors.black)),
      ),
    );
  }
}
