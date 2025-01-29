import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<ExpandableText> createState() => ExpandableTextState();
}

class ExpandableTextState extends State<ExpandableText> {
  static const _defaultMaxLines = 1;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: Sizes.size16,
            ),
            maxLines: _isExpanded ? 3 : _defaultMaxLines,
            overflow: TextOverflow.ellipsis,
          ),
          GestureDetector(
            onTap: () => setState(() => _isExpanded = !_isExpanded),
            child: Text(
              _isExpanded ? 'Show less' : 'Show more',
              style: const TextStyle(
                color: Colors.red,
                fontSize: Sizes.size14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
