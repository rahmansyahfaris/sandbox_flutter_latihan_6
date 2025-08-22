import 'package:flutter/material.dart';
import 'package:hsi_sandbox_latihan_4/note_detail_page.dart';
import '../models/note.dart';

class NoteCard extends StatelessWidget {
  final Note note;

  const NoteCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // debugPrint("Note clicked: ${note.id}");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NoteDetailPage(id: note.id)),
        );
      },
      child: Container(
        width: 158,
        height: 174,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFC8C5CB), width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: const TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 16,
                height: 1.4,
                color: Color(0xFF180E25),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              note.content,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w400,
                fontSize: 10,
                height: 1.0,
                color: Color(0xFF180E25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
