import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/core/themes/fonts.dart';

class PoopIconGrid extends StatefulWidget {
  const PoopIconGrid({super.key});

  @override
  _PoopIconGridState createState() => _PoopIconGridState();
}

class _PoopIconGridState extends State<PoopIconGrid> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      childAspectRatio: 1.1,
      children: [
        _buildTypeOption(
            'Separate hard\nlumps', 'assets/icons/Group 14type1.svg', 0),
        _buildTypeOption(
            'Lumpy and\nsausage like', 'assets/icons/Group 15type2.svg', 1),
        _buildTypeOption('A sausage shape\nwith cracks in\nthe surface',
            'assets/icons/Group 16type3.svg', 2),
        _buildTypeOption('Like a smooth,\nsoft sausage or\nsnake',
            'assets/icons/Rectangle 19type4.svg', 3),
        _buildTypeOption('Soft blobs with\nclear cut edges',
            'assets/icons/Group 17type5.svg', 4),
        _buildTypeOption('Mushy\nconsistency with\nragged edges',
            'assets/icons/Group 18type6.svg', 5),
        _buildTypeOption('Liquid\nconsistency with\nno solid pieces',
            'assets/icons/Group 59type7.svg', 6),
        _buildTypeOption('Other', 'assets/icons/Vectortype8.svg', 7),
        _buildTypeOption(
            'No bowel\nmovement', 'assets/icons/Uniontype9.svg', 8),
      ],
    );
  }

  Widget _buildTypeOption(String label, String svgAssetPath, int index) {
    final isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18.0),
            border: Border.all(
              color: isSelected ? primaryColor : const Color(0xffE0E0E0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(svgAssetPath),
              Text(
                label,
                textAlign: TextAlign.center,
                style: getRoboto(FontWeight.w400, 11, secondTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
