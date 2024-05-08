// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:multi_store/domain/domain.dart';
import 'package:multi_store/utilities/utilities.dart';

class SideNavigator extends StatefulWidget {
  const SideNavigator({
    super.key,
    required this.size,
    required this.category,
    required this.pageController,
  });

  final Size size;
  final CategoryEnum category;
  final PageController pageController;

  @override
  State<SideNavigator> createState() => _SideNavigatorState();
}

class _SideNavigatorState extends State<SideNavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(15),
        bottomRight: Radius.circular(15),
      )),
      height: widget.size.height * 0.82,
      width: widget.size.width * 0.3,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              widget.pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceInOut);
              for (var element in items) {
                element.isSelected = false;
              }
              setState(() {
                items[index].isSelected = true;
              });
            },
            child: Container(
              color:
                  items[index].isSelected ? Colors.white : Colors.grey.shade300,
              height: 100,
              child: Center(
                child: Text(items[index].label),
              ),
            ),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
