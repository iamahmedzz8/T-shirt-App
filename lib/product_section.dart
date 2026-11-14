import 'package:flutter/material.dart';
import 'package:t_shirts/model/product_model.dart';
import 'product_card.dart';

class ProductsSection extends StatefulWidget {
  const ProductsSection({super.key});

  @override
  State<ProductsSection> createState() =>
      _ProductsSectionState();
}

class _ProductsSectionState extends State<ProductsSection> {
  final List<ProductModel> products = [
    ProductModel(
      name: 'Dennis Lingo',
      brand: 'Hazy Rose',
      price: '250',
      image:
      'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?w=500',
    ),
    ProductModel(
      name: 'Marks & Spencer',
      brand: 'Hazy Rose',
      price: '140',
      image:
      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=500',
    ),
    ProductModel(
      name: 'Trucker Jacket',
      brand: 'Hazy Rose',
      price: '200',
      image:
      'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?w=500',
    ),
    ProductModel(
      name: 'Hooded Jacket',
      brand: 'Hazy Rose',
      price: '300',
      image:
      'https://images.unsplash.com/photo-1483985988355-763728e1935b?w=500',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Popular Products',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),

            GestureDetector(
              onTap: () {},
              child: const Text(
                'View All',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff668486),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 18,
            mainAxisSpacing: 18,
            childAspectRatio: 0.66,
          ),
          itemBuilder: (context, index) {
            return ProductCard(
              product: products[index],
              onFavoriteTap: () {
                setState(() {
                  products[index].isFavorite =
                  !products[index].isFavorite;
                });
              },
            );
          },
        ),
      ],
    );
  }
}