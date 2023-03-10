import 'package:flutter/material.dart';

import '../../../app/app_styles/style.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Text(
                'First',
                style: AppStyles.extraBold1(),
              ),
              TextButton(
                child: Text(
                  'Second',
                  style: AppStyles.extraBold1(),
                ),
                onPressed: () {},
              ),
              TextButton(
                child: Text(
                  'Second',
                  style: AppStyles.extraBold1(),
                ),
                onPressed: () {},
              )
            ]),
          ),
          // body: Column(
          //   children: [
          //     Container(
          //       height: 200,
          //       width: MediaQuery.of(context).size.width*1,
          //       child: const TabBar(tabs: [
          //         Tab(text: "Description"),
          //         Tab(text: "Charasteristics"),
          //         Tab(text: "Comments"),
          //       ]),
          //     ),
          //     Container(
          //       height: 200,
          //         child: TabBarView(
          //       children: [
          //         Container(
          //           color: Colors.red,
          //           child: const Center(child: Text("1 page")),
          //         ),
          //         Container(
          //           color: Colors.black,
          //           child: const Center(child: Text("2 page")),
          //         ),
          //         Container(
          //           color: Colors.yellow,
          //           child: const Center(child: Text("3 page")),
          //         ),
          //       ],
          //     )),
          //   ],
          // ),
        ));
  }
}
