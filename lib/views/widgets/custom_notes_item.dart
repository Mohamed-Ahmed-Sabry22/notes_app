import 'package:_10_note_app/models/note_model.dart';
import 'package:_10_note_app/views/edit_notes_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    note.title,
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 0, 0, 0),
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      note.delete();
                    },
                    child: const Icon(
                      FontAwesomeIcons.trash,
                      size: 26,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                note.subTitle,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  note.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
