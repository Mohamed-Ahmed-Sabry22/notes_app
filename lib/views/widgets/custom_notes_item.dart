import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 211, 107),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Flutter Tips',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
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
              'Build Your own app\nwith our course',
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'May 21,2025',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
