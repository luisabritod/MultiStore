import 'package:flutter/material.dart';
import 'package:multi_store/categories/categories.dart';
import 'package:multi_store/utilities/utilities.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({
    super.key,
    required this.size,
    required this.pageController,
  });

  final Size size;
  final PageController pageController;

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * 0.85,
      width: widget.size.width * 0.7,
      color: Colors.white,
      child: PageView(
        controller: widget.pageController,
        onPageChanged: (value) {
          for (var element in items) {
            element.isSelected = false;
          }
          setState(() {
            items[value].isSelected = true;
          });
        },
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          ItemsCategory(
            label: 'men',
            categoryItem: men,
            image: 'assets/images/men/men',
          ),
          ItemsCategory(
            label: 'women',
            categoryItem: women,
            image: 'assets/images/women/women',
          ),
          ItemsCategory(
            label: 'shoes',
            categoryItem: shoes,
            image: 'assets/images/shoes/shoes',
          ),
          ItemsCategory(
            label: 'bags',
            categoryItem: bags,
            image: 'assets/images/bags/bags',
          ),
          ItemsCategory(
            label: 'electronics',
            categoryItem: electronics,
            image: 'assets/images/electronics/electronics',
          ),
          ItemsCategory(
            label: 'accessories',
            categoryItem: accessories,
            image: 'assets/images/accessories/accessories',
          ),
          ItemsCategory(
            label: 'Home & Garden',
            categoryItem: homeandgarden,
            image: 'assets/images/homegarden/home',
          ),
          ItemsCategory(
            label: 'kids',
            categoryItem: kids,
            image: 'assets/images/kids/kids',
          ),
          ItemsCategory(
            label: 'beauty',
            categoryItem: beauty,
            image: 'assets/images/beauty/beauty',
          ),
        ],
      ),
    );
  }
}
