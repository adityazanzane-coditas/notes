import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/presentation/screens/cart_screen.dart';
import 'package:food_delivery_app/features/presentation/screens/item_not_found_screen.dart';
import 'package:food_delivery_app/features/presentation/widgets/dot_indicator.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});

  @override
  _FoodDetailsScreenState createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  int _selectedDotIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xffF6F6F9),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ItemNotFoundScreen()),
              );
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(64, 128, 64, 58),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/food_details_screen/Mask Groupfood.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            DotIndicator(
              selectedIndex: _selectedDotIndex,
              count: 4,
              onDotSelected: (index) {
                setState(() {
                  _selectedDotIndex = index;
                });
              },
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Veggie tomato mix',
                      style: TextStyle(
                        fontFamily: 'SFProRounded',
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Center(
                    child: Text(
                      'N1,900',
                      style: TextStyle(
                          fontFamily: 'SFProRounded',
                          fontSize: 22,
                          color: Color(0xffFA4A0C),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Delivery info',
                    style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
                    style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Return policy',
                    style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
                    style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xffFA4A0C),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
