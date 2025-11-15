import 'package:_10_note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:_10_note_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:_10_note_app/views/widgets/notes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => NotesCubit(),
        child: const NotesViewBody(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 68, 65, 65),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: const AddNoteBottomSheet(),
              );
            },
          );
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
