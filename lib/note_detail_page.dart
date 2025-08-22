import 'package:flutter/material.dart';
import 'package:hsi_sandbox_latihan_4/models/note.dart';
import 'package:hsi_sandbox_latihan_4/widgets/back_nav_button.dart';
import 'package:hsi_sandbox_latihan_4/data/dummy_notes.dart';
import 'package:intl/intl.dart';

class NoteDetailPage extends StatelessWidget {
  final String id;

  const NoteDetailPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    // Dummy lookup based on id
    final Note note = getNoteById(id);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // disable Flutter’s default back
        title: const BackNavButton(),
        elevation: 0,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1, color: Color(0xFFEFEEF0)),
        ),
      ),
      // default back arrow
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 16),
              Text(note.content, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Color(0xFFEFEEF0), offset: Offset(0, -1)),
          ],
        ),
        child: Row(
          // use
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left: Last edited text
            Padding(
              // gives padding to the left only, not anywhere else so that
              // it doesn't overpower or exceed the height of the
              // button (Container Box Decoration in Gesture Detector)
              // which makes the button's side stretch all the way to the
              // whole Bottom Nav Bar's top, bottom, and right borders
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Text(
                "Last edited on ${DateFormat('HH.mm').format(note.lastEdited)}",
                style: const TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.0,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
              ),
            ),

            // Right: Three-dots button
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEFEEF0),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                    size:
                                        12, // since your spec says ~8px, 12 fits Flutter scale
                                    color: Color(0xFF827D89),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Mark as Finished
                        ListTile(
                          leading: const Icon(
                            Icons.check,
                            color: Color(0xFF180E25),
                          ),
                          title: const Text(
                            "Mark as Finished",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              height: 1.4,
                              color: Color(0xFF180E25),
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            // TODO: handle finish action
                          },
                        ),
                        // Divider Line
                        SizedBox(
                          width: 328,
                          child: Divider(
                            thickness: 1,
                            color: const Color(0xFFEFEEF0),
                          ),
                        ),
                        // Delete Note
                        ListTile(
                          leading: const Icon(
                            Icons.delete,
                            color: Color(0xFFCE3A54),
                          ),
                          title: const Text(
                            "Delete Note",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              height: 1.4,
                              color: Color(0xFFCE3A54),
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            // TODO: handle delete action
                          },
                        ),
                        SizedBox(height: 32),
                      ],
                    );
                  },
                );
              },
              child: Container(
                width: 56,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0xFF394675), // different background
                  borderRadius: BorderRadius.circular(0),
                ),
                alignment: Alignment.center,
                child: Icon(Icons.more_horiz, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
