import 'package:flutter/material.dart';
import 'package:multi_store/domain/category_enum.dart';
import 'package:multi_store/utilities/utilities.dart';
import 'package:multi_store/widgets/widgets.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late ValueNotifier<CategoryEnum> notifier;
  final PageController pageController = PageController();

  @override
  void initState() {
    notifier = ValueNotifier<CategoryEnum>(CategoryEnum.MEN);
    for (var element in items) {
      element.isSelected = false;
    }
    setState(() {
      items[0].isSelected = true;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const FakeSearch(),
      ),
      body: ValueListenableBuilder<CategoryEnum>(
          valueListenable: notifier,
          builder: (context, value, _) {
            return Stack(
              children: [
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: SideNavigator(
                    size: size,
                    category: value,
                    pageController: pageController,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child:
                      CategoryView(size: size, pageController: pageController),
                ),
              ],
            );
          }),
    );
  }
}
