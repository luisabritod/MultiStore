// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:multi_store/minor_screens/minor_screens.dart';

// List<String> menImages = [
//   'assets/images/men/men0.jpg',
//   'assets/images/men/men1.jpg',
//   'assets/images/men/men2.jpg',
//   'assets/images/men/men3.jpg',
//   'assets/images/men/men4.jpg',
//   'assets/images/men/men5.jpg',
//   'assets/images/men/men6.jpg',
//   'assets/images/men/men7.jpg',
//   'assets/images/men/men8.jpg',
// ];

class ItemsCategory extends StatelessWidget {
  const ItemsCategory({
    super.key,
    required this.label,
    required this.categoryItem,
    required this.image,
  });

  final String label;
  final List<String> categoryItem;
  final String image;

  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(30),
        child: Text(
          capitalize(label),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
            children: List.generate(categoryItem.length, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubCategoryScreen(
                                title: capitalize(categoryItem[index]),
                                label: capitalize(label),
                              )));
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: Image.asset('$image$index.jpg'),
                    ),
                    Text(capitalize(categoryItem[index])),
                  ],
                ),
              );
            })),
      ),
    ]);
  }
}
