import 'package:_10_note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:_10_note_app/views/widgets/custom_app_bar.dart';
import 'package:_10_note_app/views/widgets/notes_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(barText: 'Notes', icon: Icons.search),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
