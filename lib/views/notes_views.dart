import 'package:flutter/material.dart';
import 'package:notepad/widgets/notes_view_body.dart';

import '../widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                context: context,
                builder: (context) {
                  return const AddNoteBottomCheat();
                });
          },
          child: const Icon(Icons.add)),
      body: const NotesViewBody(),
    );
  }
}
