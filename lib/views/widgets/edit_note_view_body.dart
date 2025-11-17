import 'package:_10_note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:_10_note_app/models/note_model.dart';
import 'package:_10_note_app/views/widgets/custom_app_bar.dart';
import 'package:_10_note_app/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            barText: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 20),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          SizedBox(height: 20),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.subTitle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
