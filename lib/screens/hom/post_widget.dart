import 'package:flutter/material.dart';
import 'package:shop/screens/hom/tab/post2_page.dart';

import '../../widget/news/news3_page.dart';
import '../../widget/news/news_page.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(
            left: 25,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "adds",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.search_rounded,
                size: 30,
                color: Colors.black87,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const News3Page())));
              }),
          IconButton(
              icon: const Icon(
                Icons.notification_add,
                size: 30,
                color: Colors.black87,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const NewsPage())));
              }),
        ],
      ),
      backgroundColor: const Color(0xffF5F5F5),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0,top: 10,),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: index == 0
                        ? const Radius.circular(10)
                        : const Radius.circular(0),
                    topRight: index == 0
                        ? const Radius.circular(10)
                        : const Radius.circular(0),
                  )),
              child: Column(
                children: [
                  ListTile(
                      minLeadingWidth: 2,
                      leading: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/img.png'))),
                      ),
                      title: const Text(
                        'Texnomart',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      trailing: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0,),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Follow me'),
                      ),),
                  const SizedBox(height: 5,),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const Description())));
                    },
                    child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            // fit: BoxFit.fitWidth,
                            image: AssetImage('assets/images/img_1.png'),
                    
                          ),
                        ),
                      ),
                  ),
                  
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(
                          'Neo QLED 4K Smart TV QN90A',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children:  [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          'Samsung',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue[900]),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(
                          '1200\$',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.black87,fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Wrap(
                      children: const [
                        Icon(
                          Icons.fastfood_sharp,
                          color: Colors.black,
                          size: 25,
                        ),
                        Icon(
                          Icons.radio,
                          color: Colors.black,
                          size: 25,
                        ),
                      ],
                    ),
                    trailing: const Icon(
                      Icons.account_balance_wallet_rounded,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  const Divider(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
