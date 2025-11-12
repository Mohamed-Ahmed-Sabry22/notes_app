import 'package:_10_note_app/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Column(
          children: [
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 20),
            CustomTextField(hintText: 'Content', maxLines: 8),
          ],
        ),
      ),
    );
  }
}
