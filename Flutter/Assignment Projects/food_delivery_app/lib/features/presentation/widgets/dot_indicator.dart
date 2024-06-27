import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final int selectedIndex;
  final int count;
  final ValueChanged<int> onDotSelected;

  const DotIndicator(
      {super.key,
      required this.selectedIndex,
      required this.count,
      required this.onDotSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (index) => GestureDetector(
          onTap: () => onDotSelected(index),
          child: Dot(isSelected: index == selectedIndex),
        ),
      ).toList(),
    );
  }
}

class Dot extends StatelessWidget {
  final bool isSelected;

  const Dot({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xffFA4A0C) : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
