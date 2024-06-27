import 'package:flutter/material.dart';

class PoopColour extends StatefulWidget {
  const PoopColour({super.key});

  @override
  _PoopColourState createState() => _PoopColourState();
}

class _PoopColourState extends State<PoopColour> {
  late Color selectedColor;

  @override
  void initState() {
    super.initState();
    selectedColor = Colors.orange; // Set initial selected color
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildColorOption(const Color(0xffF6B581)),
          _buildColorOption(const Color(0xffD18B65)),
          _buildColorOption(const Color(0xffB5651E)),
          _buildColorOption(const Color(0xffA26A41)),
          _buildColorOption(const Color(0xff84694D)),
          _buildColorOption(const Color(0xff879978)),
        ],
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = color;
        });
      },
      child: Container(
        width: 65.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            strokeAlign: BorderSide.strokeAlignInside,
            color: selectedColor == color
                ? const Color(0xffB5651E)
                : Colors.transparent,
            width: 4.0,
          ),
        ),
      ),
    );
  }
}
