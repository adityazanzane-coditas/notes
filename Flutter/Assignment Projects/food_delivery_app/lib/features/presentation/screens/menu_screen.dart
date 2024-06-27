import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/features/presentation/screens/cart_screen.dart';
import 'package:food_delivery_app/features/presentation/screens/login_signup_screen.dart';
import 'package:food_delivery_app/features/presentation/screens/no_internet_screen.dart';
import 'package:food_delivery_app/features/presentation/screens/offers_screen.dart';
import 'package:food_delivery_app/features/presentation/screens/profile_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFA4A0C),
      body: Padding(
        padding: const EdgeInsets.only(left: 17.0),
        child: ListView(
          children: [
            const SizedBox(height: 111),
            ListTile(
              leading:
                  SvgPicture.asset('assets/menu_bar/gg_profileprofile.svg'),
              title: const Text(
                'Profile',
                style: TextStyle(
                    fontFamily: 'SFProRounded',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
            ),
            const Divider(
              indent: 50,
              endIndent: 30,
              thickness: 1,
              color: Color(0xffF97447),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/menu_bar/icons8_buyorder.svg'),
              title: const Text(
                'orders',
                style: TextStyle(
                    fontFamily: 'SFProRounded',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              },
            ),
            const Divider(
              indent: 50,
              endIndent: 30,
              thickness: 1,
              color: Color(0xffF97447),
            ),
            ListTile(
              leading: SvgPicture.asset(
                  'assets/menu_bar/ic_outline-local-offeroffer.svg'),
              title: const Text(
                'offer and Promo',
                style: TextStyle(
                    fontFamily: 'SFProRounded',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OfferScreen()),
                );
              },
            ),
            const Divider(
              indent: 50,
              endIndent: 30,
              thickness: 1,
              color: Color(0xffF97447),
            ),
            ListTile(
              leading: SvgPicture.asset(
                  'assets/menu_bar/ic_outline-sticky-note-2privacy.svg'),
              title: const Text(
                'Privacy Policy',
                style: TextStyle(
                    fontFamily: 'SFProRounded',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NoInternetScreen()),
                );
              },
            ),
            const Divider(
              indent: 50,
              endIndent: 30,
              thickness: 1,
              color: Color(0xffF97447),
            ),
            ListTile(
              leading: SvgPicture.asset(
                  'assets/menu_bar/whh_securityaltsecurity.svg'),
              title: const Text(
                'Security',
                style: TextStyle(
                    fontFamily: 'SFProRounded',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NoInternetScreen()),
                );
              },
            ),
            const Divider(
              indent: 50,
              endIndent: 30,
              thickness: 1,
              color: Color.fromRGBO(249, 116, 71, 1),
              height: 280,
            ),
            ListTile(
              title: const Text(
                'Sign-out →',
                style: TextStyle(
                    fontFamily: 'SFProRounded',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoginSignupScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
