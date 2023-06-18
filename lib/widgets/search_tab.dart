import 'package:flutter/material.dart';

import '../colors.dart';

class SearchTab extends StatelessWidget {
  final bool? isActive;
  final String text;
  final IconData icon;
  const SearchTab({super.key, required this.isActive, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: isActive! ? blueColor : Colors.grey,
            ),
            const SizedBox(height: 7),
            isActive! ? Container(
              height: 3,
              width: 40,
              color: blueColor,
            ) : Container(),
          ],
        ),
      ],
    );
  }
}
