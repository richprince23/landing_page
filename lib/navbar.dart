import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 120,
            height: 50,
            child: Text(
              "SkinCare",
              style: TextStyle(fontSize: 28),
            ),
          ),
          // const Spacer(),
          const Text('Home'),
          const Text('Products'),
          const Text('Blog'),
          const Text('Contact Us'),
          // const Spacer(),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.search),
                const SizedBox(width: 20),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_circle_right_outlined),
                    label: const Text("Sign Up"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
