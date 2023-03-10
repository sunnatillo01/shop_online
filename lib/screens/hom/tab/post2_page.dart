import 'package:flutter/material.dart';
import 'package:shop/screens/hom/tab/charasteristics.dart';
import 'package:shop/screens/hom/tab/comment.dart';
import 'package:shop/screens/hom/tab/description.dart';


import '../../../app/app_styles/style.dart';

class Description extends StatefulWidget {
  static const String id = "description_page";
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description>
    with TickerProviderStateMixin {
  late TabController tabController = TabController(vsync: this, length: 3);
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
            Container(
              height: 270.0,
              width: MediaQuery.of(context).size.width*1,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  // fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/img_1.png'),
                ),
              ),
            ),
            Positioned(
              child: IconButton(
                  icon: const Icon(
                   Icons.chevron_left,
                    size: 50,
                    color: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pop(context, 'home_page');
                  }),
            ),
          ]),
          DefaultTabController(
            length: 3,
            child: SizedBox(
              height: 50,
              child: TabBar(
                  onTap: (value) {
                  },
                  physics: const NeverScrollableScrollPhysics(),
                  controller: tabController,
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: const TextStyle(color: Colors.grey),
                  tabs: [
                    SizedBox(
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          'Tavsif',
                          style: AppStyles.extraBold1(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          'Xususiyatlari',
                          style: AppStyles.extraBold1(),
                          
                        ),
                      ),
                    ),
                    SizedBox(
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          'Izohlar',
                          style: AppStyles.extraBold1(),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 400,
            child: TabBarView(
              controller: tabController,
              children: [
                DescreptionPage(),
               const   CharasterPage(),
              const  CommentPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
