import 'package:flutter/material.dart';
import 'package:t_shirts/brand_section.dart';
import 'package:t_shirts/categories_section.dart';
import 'package:t_shirts/custom_bottom_nav.dart';
import 'package:t_shirts/home_header.dart';
import 'package:t_shirts/product_section.dart';
import 'package:t_shirts/search_filter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [

                SizedBox(height: 25),

                HomeHeader(),

                SizedBox(height: 25),

                SearchFilter(),

                SizedBox(height: 25),

                CategoriesSection(),

                SizedBox(height: 30),

                BrandsSection(),

                SizedBox(height: 35),

                ProductsSection(),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNav(
        selectedIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}