import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food_delivery_app/features/presentation/screens/cart_screen.dart';
import 'package:food_delivery_app/features/presentation/screens/history_screen.dart';
import 'package:food_delivery_app/features/presentation/screens/menu_screen.dart';
import 'package:food_delivery_app/features/presentation/screens/no_order_screen.dart';
import 'package:food_delivery_app/features/presentation/screens/profile_screen.dart';
import 'package:food_delivery_app/features/presentation/widgets/menu_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ZoomDrawerController _zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuBackgroundColor: const Color(0xffFA4A0C),
      openCurve: Curves.fastOutSlowIn,
      showShadow: true,
      shadowLayer1Color: const Color(0xffFA4A0C),
      borderRadius: 38,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      mainScreenScale: 0.4,
      angle: 0.0,
      controller: _zoomDrawerController,
      menuScreen: const MenuScreen(),
      mainScreen: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(250, 249, 249, 249),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    children: [
                      MenuWidget(zoomDrawerController: _zoomDrawerController),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NoOrderScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 21.0),
                          child: SvgPicture.asset(
                              'assets/home_screen/shopping-cartcart.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 179, top: 12),
                  child: Text(
                    'Delicious food for you',
                    style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontWeight: FontWeight.w700,
                      fontSize: 34,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 28),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        prefixIcon: GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/home_screen/search.png'),
                        ),
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                          fontFamily: 'SFProRounded',
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 40),
                  child: SizedBox(
                    height: 78,
                    child: TabBar(
                      tabs: [
                        Tab(text: 'Foods'),
                        Tab(text: 'Drinks'),
                        Tab(text: 'Snacks'),
                        Tab(text: 'Sauce'),
                      ],
                      isScrollable: true,
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          color: Color(0xFFFA4A0C),
                          width: 4.0,
                        ),
                        insets: EdgeInsets.symmetric(horizontal: 60),
                      ),
                      labelColor: Color(0xFFFA4A0C),
                      labelStyle: TextStyle(fontSize: 17),
                      labelPadding: EdgeInsets.symmetric(horizontal: 18.0),
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 4.0),
                    child: TabBarView(
                      children: [
                        Center(
                          child: Stack(
                            children: [
                              Positioned(
                                top: 35,
                                left: 320,
                                child: Text(
                                  'see more',
                                  style: TextStyle(
                                    fontFamily: 'SFProRounded',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(child: Text('Drinks Tab')),
                        Center(child: Text('Snacks Tab')),
                        Center(child: Text('Sauce Tab')),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset('assets/home_screen/Vectorhome.svg'),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartScreen()),
                          );
                        },
                        child: SvgPicture.asset(
                            'assets/home_screen/heartheartIcon.svg'),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfileScreen()),
                          );
                        },
                        child: SvgPicture.asset(
                            'assets/home_screen/useruserIcon.svg'),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HistoryScreen()),
                          );
                        },
                        child: SvgPicture.asset(
                            'assets/home_screen/ic_sharp-historyhistoryIcon.svg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
