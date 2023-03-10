import 'package:flutter/material.dart';

class News2Page extends StatefulWidget {
  static const String id = "news2_page";
  const News2Page({super.key});

  @override
  State<News2Page> createState() => _News2PageState();
}

class _News2PageState extends State<News2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              size: 30,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.pop(context,'news_page');
            }),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Top Chinese diplomat to meet Putin ahead of Ukraine anniversary',
              style: TextStyle(
                  color: Color(0xFF2C2C2C),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 5.0),
          Container(
            height: 240.0,
            decoration: const BoxDecoration(
              image:  DecorationImage(
                // fit: BoxFit.fitWidth,
                image: AssetImage('assets/images/img_1.png'),
              ),
            ),
          ),
          const SizedBox(height: 12.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Russia's State Duma, the lower house of parliament, has voted to suspend Russia's participation in the New Start nuclear arms treaty with the United States. Putin introduced the bill last night after he announced Russia's intention to suspend participation in the treaty in a state of the nation address.",
                  style: TextStyle(
                      color: Color(0xFF14191F),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 12.0),
                Text(
                  "Russia's State Duma, the lower house of parliament, has voted to suspend Russia's participation in the New Start nuclear arms treaty with the United States. Putin introduced the bill last night after he announced Russia's intention to suspend participation in the treaty in a state of the nation address.",
                  style: TextStyle(
                      color: Color(0xFF14191F),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 12.0),
                Text(
                  "22.02.23",
                  style: TextStyle(
                      color: Color(0xFFADADAD),
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
