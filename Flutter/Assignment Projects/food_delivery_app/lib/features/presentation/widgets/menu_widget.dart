import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuWidget extends StatelessWidget {
  final ZoomDrawerController zoomDrawerController;

  const MenuWidget({super.key, required this.zoomDrawerController});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => zoomDrawerController.toggle?.call(),
      icon: Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: SvgPicture.asset('assets/home_screen/Vectormenu.svg'),
      ),
    );
  }
}
