import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/features/presentation/screens/payment_screen.dart';
import 'package:food_delivery_app/features/presentation/widgets/cart_item_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 195.0,
            ),
            child: Text(
              'Cart',
              style: TextStyle(
                fontFamily: 'SFProRounded',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 112.0, right: 112, top: 57),
              child: Row(
                children: [
                  SvgPicture.asset('assets/cart_screen/iwwa_swipeswipe.svg'),
                  Text('swipe on an item to delete'),
                ],
              ),
            ),
            const CartItemWidget(),
            const CartItemWidget(),
            const CartItemWidget(),
            const SizedBox(
              height: 330,
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xffFA4A0C),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Complete Order',
                    style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontWeight: FontWeight.w600,
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
