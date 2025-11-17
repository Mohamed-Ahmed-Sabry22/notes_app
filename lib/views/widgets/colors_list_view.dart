import 'package:_10_note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: isActive
          ? CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: CircleAvatar(radius: 20, backgroundColor: color),
            )
          : CircleAvatar(radius: 22, backgroundColor: color),
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffF4F8D3),
    Color(0xffF7CFD8),
    Color(0xffA6D6D6),
    Color(0xffFF6363),
    Color(0xff8E7DBE),
    Color(0xffDDEB9D),
    Color(0xffCAE8BD),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 44,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                  currentIndex = index;
                });
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
