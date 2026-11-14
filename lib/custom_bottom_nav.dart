import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  final List<IconData> icons = const [
    Icons.home_outlined,
    Icons.favorite_border,
    Icons.shopping_cart_outlined,
    Icons.notifications_none,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          icons.length,
              (index) {
            final isSelected = selectedIndex == index;

            return GestureDetector(
              onTap: () => onTap(index),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: isSelected
                      ? const Border(
                    top: BorderSide(
                      color: Color(0xff668486),
                      width: 2,
                    ),
                  )
                      : null,
                ),
                child: Icon(
                  icons[index],
                  size: 25,
                  color: isSelected
                      ? const Color(0xff668486)
                      : Colors.black,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}