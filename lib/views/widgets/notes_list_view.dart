import 'package:_10_note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:_10_note_app/models/note_model.dart';
import 'package:_10_note_app/views/widgets/custom_notes_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.all(0),
            itemBuilder: (BuildContext context, int index) {
              return NotesItem(note: notes[index]);
            },
          ),
        );
      },
    );
  }
}
