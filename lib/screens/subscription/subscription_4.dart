import 'package:flutter/material.dart';

import '../../app/app_styles/style.dart';

class SubsPage extends StatefulWidget {
  const SubsPage({super.key});

  @override
  State<SubsPage> createState() => _SubsPageState();
}

class _SubsPageState extends State<SubsPage> with TickerProviderStateMixin {
  bool rech = false;
  late TabController tabController = TabController(vsync: this, length: 2);
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Chat qidiruvi",
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            DefaultTabController(
              length: 2,
              child: SizedBox(
                height: 50,
                child: TabBar(
                    onTap: (value) {},
                    physics: const NeverScrollableScrollPhysics(),
                    controller: tabController,
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle: const TextStyle(color: Colors.grey),
                    tabs: [
                      SizedBox(
                        height: double.infinity,
                        child: Center(
                          child: Text(
                            'First',
                            style: AppStyles.extraBold1(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: double.infinity,
                        child: Center(
                          child: Text(
                            'Second',
                            style: AppStyles.extraBold1(),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: TabBarView(controller: tabController, children: [
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        dense: false,
                        enabled: false,
                        leading: const CircleAvatar(
                          radius: 25,
                        ),
                        title: const Text("Sarah Bakerson"),
                        subtitle: const Text("Hello bro, how are you today..."),
                        trailing: SizedBox(
                          width: 90,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Obuna',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Container(
                  height: 300,
                  width: 200,
                  color: Colors.red,
                ),
              
              ],),
            ),
          ],
        ),
      ),
    );
  }
}

class TabsExample extends StatelessWidget {
  const TabsExample({super.key});

  @override
  Widget build(BuildContext context) {
    final kTabs = [
      // ignore: avoid_unnecessary_containers
      Container(
        child: Center(
          child: Text(
            'First',
            style: AppStyles.extraBold1(),
          ),
        ),
      ),
      // ignore: avoid_unnecessary_containers
      Container(
        child: Center(
          child: Text(
            'Second',
            style: AppStyles.extraBold1(),
          ),
        ),
      )
    ];
    return DefaultTabController(
      length: kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 2,
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
            onTap: (value) {
            },
            physics: const NeverScrollableScrollPhysics(),
            tabs: kTabs,
          ),
        ),
      ),
    );
  }
}
