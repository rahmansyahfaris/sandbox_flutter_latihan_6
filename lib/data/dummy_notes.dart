// lib/data/dummy_notes.dart
import 'package:hsi_sandbox_latihan_4/models/note.dart';

/// Centralized dummy data for notes.
/// Later on, this could be replaced with an API or database.
List<Note> getDummyNotes() {
  return [
    Note(
      id: "note_001",
      title: "First Note",
      content:
          "This is a dummy overview of note one."
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
          "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
          "nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "
          "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n"
          "Every great achievement begins with an idea, a single spark that "
          "ignites the imagination. When you choose to capture that spark, "
          "you set in motion a chain of events that can change not only your "
          "life, but also the lives of those around you. "
          "Do not underestimate the power of writing down even the simplest thought.\n\n"
          "It was a quiet morning when she first opened the old notebook. "
          "The pages smelled faintly of time and possibility, and every blank line "
          "seemed to invite her to begin anew. She didn’t know what stories would emerge, "
          "but she trusted that words, once written, would guide her to unexpected places.\n\n"
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
          "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
          "nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "
          "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n"
          "Every great achievement begins with an idea, a single spark that "
          "ignites the imagination. When you choose to capture that spark, "
          "you set in motion a chain of events that can change not only your "
          "life, but also the lives of those around you. "
          "Do not underestimate the power of writing down even the simplest thought.\n\n"
          "It was a quiet morning when she first opened the old notebook. "
          "The pages smelled faintly of time and possibility, and every blank line "
          "seemed to invite her to begin anew. She didn’t know what stories would emerge, "
          "but she trusted that words, once written, would guide her to unexpected places.\n\n"
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
          "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
          "nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "
          "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n"
          "Every great achievement begins with an idea, a single spark that "
          "ignites the imagination. When you choose to capture that spark, "
          "you set in motion a chain of events that can change not only your "
          "life, but also the lives of those around you. "
          "Do not underestimate the power of writing down even the simplest thought.\n\n"
          "It was a quiet morning when she first opened the old notebook. "
          "The pages smelled faintly of time and possibility, and every blank line "
          "seemed to invite her to begin anew. She didn’t know what stories would emerge, "
          "but she trusted that words, once written, would guide her to unexpected places.\n\n",
      lastEdited: DateTime.now(),
    ),
    Note(
      id: "note_002",
      title: "Second Note",
      content: "This is another dummy overview of note two.",
      lastEdited: DateTime.now(),
    ),
    Note(
      id: "note_003",
      title: "Third Note",
      content: "Here is some more content to test wrapping...",
      lastEdited: DateTime.now(),
    ),
    Note(
      id: "note_004",
      title: "Fourth Note",
      content: "This is just another filler note to test layout.",
      lastEdited: DateTime.now(),
    ),
    Note(
      id: "note_005",
      title: "Fifth Note",
      content: "More dummy data for scrolling behavior.",
      lastEdited: DateTime.now(),
    ),
    Note(
      id: "note_006",
      title: "Sixth Note",
      content: "More dummy data for scrolling behavior.",
      lastEdited: DateTime.now(),
    ),
    Note(
      id: "note_007",
      title: "Seventh Note",
      content: "More dummy data for scrolling behavior.",
      lastEdited: DateTime.now(),
    ),
  ];
}

/// Optional helper: safe lookup by ID
Note getNoteById(String id) {
  return getDummyNotes().firstWhere(
    (note) => note.id == id,
    orElse:
        () => Note(
          id: "0",
          title: "Not Found",
          content: "Note not found",
          lastEdited: DateTime.now(),
        ),
  );
}
