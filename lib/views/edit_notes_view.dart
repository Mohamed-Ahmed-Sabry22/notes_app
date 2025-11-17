import 'package:_10_note_app/models/note_model.dart';
import 'package:_10_note_app/views/widgets/edit_note_view_body.dart';
import 'package:flutter/material.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteViewBody(note: note));
  }
}
