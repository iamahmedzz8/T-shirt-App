import 'package:flutter/material.dart';

class BrandsSection extends StatelessWidget {
  const BrandsSection({super.key});

  final List<Map<String, String>> brands = const [
    {'name': 'Zara', 'logo': 'ZARA'},
    {'name': 'Gucci', 'logo': 'GG'},
    {'name': 'H&M', 'logo': 'H&M'},
    {'name': 'Nike', 'logo': '✓'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top Brands',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 18),

        Row(
          children: brands.map((brand) {
            return Expanded(
              child: Column(
                children: [
                  Container(
                    height: 72,
                    width: 72,
                    decoration: const BoxDecoration(
                      color: Color(0xffFAFAFA),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      brand['logo']!,
                      style: TextStyle(
                        fontSize: brand['name'] == 'Zara'
                            ? 23
                            : 25,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    brand['name']!,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}