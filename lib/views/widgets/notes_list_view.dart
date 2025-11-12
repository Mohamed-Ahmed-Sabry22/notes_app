import 'package:_10_note_app/views/widgets/custom_notes_item.dart';
import 'package:flutter/material.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemBuilder: (BuildContext context, int index) {
          return const NotesItem();
        },
      ),
    );
  }
}
