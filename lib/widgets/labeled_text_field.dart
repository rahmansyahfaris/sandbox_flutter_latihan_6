import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  final String label; // text shown above the field
  final String hint; // placeholder inside field
  final bool obscureText; // true for password

  const LabeledTextField({
    super.key,
    required this.label,
    required this.hint,
    this.obscureText = false, // default not obscured
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500, // medium
            fontSize: 14,
            height: 1.4, // 140%
            color: Color(0xFF180E25), // dark text
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 1.4,
              color: Color(0xFFC8C5CB),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFC8C5CB), width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFC8C5CB), width: 1),
            ),
          ),
        ),
      ],
    );
  }
}
