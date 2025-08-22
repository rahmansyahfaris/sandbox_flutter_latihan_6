import 'package:flutter/material.dart';

class BackNavButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const BackNavButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () => Navigator.pop(context),
      child: Row(
        children: const [
          SizedBox(width: 16),
          Icon(
            Icons.chevron_left,
            size: 20,
            color: Color(0xFF394675),
          ),
          SizedBox(width: 4),
          Text(
            "Back",
            style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 16,
              height: 1.4,
              color: Color(0xFF394675),
            ),
          ),
        ],
      ),
    );
  }
}
