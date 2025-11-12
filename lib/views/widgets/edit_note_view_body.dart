import 'package:_10_note_app/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(barText: 'Edit Note'),
        ],
      ),
    );
    ;
  }
}
