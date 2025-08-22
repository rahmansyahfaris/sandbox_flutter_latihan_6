import 'package:flutter/material.dart';
import 'package:hsi_sandbox_latihan_4/data/dummy_notes.dart';
import 'package:hsi_sandbox_latihan_4/widgets/note_card.dart';

class NoteListPage extends StatefulWidget {
  const NoteListPage({super.key});

  @override
  State<NoteListPage> createState() => _NoteListPageState();
}

class _NoteListPageState extends State<NoteListPage> {
  bool _isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _isEmpty
              ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/undraw_idea_hz8b_1.png",
                      width: 245,
                      height: 219,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      "Start Your Journey",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Every big step start with small step.\n"
                      "Notes your first idea and start\n"
                      "your journey!",
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
              : Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  crossAxisCount: 2, // 2 cards per row
                  crossAxisSpacing: 16, // spacing between columns
                  mainAxisSpacing: 16, // spacing between rows
                  children:
                      getDummyNotes()
                          .map((note) => NoteCard(note: note))
                          .toList(),
                ),
              ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // print("FAB clicked!");
          setState(() {
            _isEmpty = !_isEmpty; // flips between true and false
          });
        },
        backgroundColor: const Color(0xFF394675),
        elevation: 3,
        shape: const CircleBorder(), // ensures it’s a circle
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 28, // slightly bigger so it feels right in 64x64
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
