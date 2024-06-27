import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/presentation/screens/my_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F8),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F8),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 48, top: 34, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              'My Profile',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w600,
                fontFamily: 'SFProRounded',
              ),
            ),
            const SizedBox(height: 36),
            const Row(
              children: [
                Text(
                  'Personal details',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SFProRounded',
                  ),
                ),
                SizedBox(
                  width: 126,
                ),
                Text(
                  'change',
                  style: TextStyle(
                    color: Color(0xffFA4A0D),
                    fontFamily: 'SFProRounded',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 325,
              height: 183,
              child: Card(
                elevation: 0.1,
                color: Colors.white,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/profile_page/Rectangle 6myProfile.png',
                          height: 105,
                          width: 105,
                        ),
                      ],
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Marvis Ighedosa',
                              style: TextStyle(
                                fontFamily: 'SFProRounded',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Dosamarvis@gmail.com',
                              style: TextStyle(
                                fontFamily: 'SFProRounded',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff808080),
                              ),
                            ),
                            Divider(),
                            Text(
                              '+234 9011039271',
                              style: TextStyle(
                                fontFamily: 'SFProRounded',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff808080),
                              ),
                            ),
                            Divider(),
                            Text(
                              'No 15 uti street off ovie palace road effurun delta state',
                              style: TextStyle(
                                fontFamily: 'SFProRounded',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff808080),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 48.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 0.1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23.0),
                    ),
                    child: const ListTile(
                      leading: Text(
                        'Orders',
                        style: TextStyle(
                            fontFamily: 'SFProRounded',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 48.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 0.1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23.0),
                    ),
                    child: const ListTile(
                      leading: Text(
                        'Pending reviews',
                        style: TextStyle(
                            fontFamily: 'SFProRounded',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 48.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 0.1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23.0),
                    ),
                    child: const ListTile(
                      leading: Text(
                        'Faq',
                        style: TextStyle(
                            fontFamily: 'SFProRounded',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 48.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 0.1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23.0),
                    ),
                    child: const ListTile(
                      leading: Text(
                        'Help',
                        style: TextStyle(
                            fontFamily: 'SFProRounded',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 78,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyProfileScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xffFA4A0C),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 140, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Update',
                  style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
