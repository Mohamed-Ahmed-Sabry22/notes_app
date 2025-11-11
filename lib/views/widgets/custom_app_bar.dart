import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(fontSize: 30, color: Colors.white)),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(26, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(onTap: () {}, child: Icon(Icons.search, size: 30)),
          ),
        ),
      ],
    );
  }
}
