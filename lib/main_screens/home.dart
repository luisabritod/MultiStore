import 'package:flutter/material.dart';
import 'package:multi_store/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const FakeSearch(),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Padding(
              padding: EdgeInsets.only(left: 0),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Color(0xff57A39E),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 6,
                tabs: [
                  RepeatedTab(
                    label: 'Men',
                  ),
                  RepeatedTab(
                    label: 'Women',
                  ),
                  RepeatedTab(
                    label: 'Shoes',
                  ),
                  RepeatedTab(
                    label: 'Bags',
                  ),
                  RepeatedTab(
                    label: 'Eletronics',
                  ),
                  RepeatedTab(
                    label: 'Acessories',
                  ),
                  RepeatedTab(
                    label: 'Home & Garden',
                  ),
                  RepeatedTab(
                    label: 'Kids',
                  ),
                  RepeatedTab(
                    label: 'Beauty',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('men screen'),
            ),
            Center(
              child: Text('women screen'),
            ),
            Center(
              child: Text('shoes screen'),
            ),
            Center(
              child: Text('bags screen'),
            ),
            Center(
              child: Text('eletronics screen'),
            ),
            Center(
              child: Text('acessories screen'),
            ),
            Center(
              child: Text('home & garden screen'),
            ),
            Center(
              child: Text('kids screen'),
            ),
            Center(
              child: Text('beauty screen'),
            ),
          ],
        ),
      ),
    );
  }
}
