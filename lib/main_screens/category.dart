import 'package:flutter/material.dart';
import 'package:multi_store/widgets/widgets.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: SideNavigator(size: size),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: CategoryView(size: size),
          ),
        ],
      ),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.85,
      width: size.width * 0.7,
      color: Colors.white,
    );
  }
}
