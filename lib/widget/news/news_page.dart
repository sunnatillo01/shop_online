import 'package:flutter/material.dart';

import 'news2_page.dart';

class NewsPage extends StatefulWidget {
  static const String id = "news_page";
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.7,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              size: 30,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.pop(context, 'home_page');
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Songi Yangiliklar',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C2C2C),
              ),
            ),
            const SizedBox(height: 15.0),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: ((context, index) {
                  return ListTile(
                    minVerticalPadding: 10,
                    onTap: () {},
                    dense: false,
                    enabled: false,
                    leading: Container(
                      height: 200.0,
                      width: 110.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/img_1.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    title: const Text(
                      "Vladimir Putin bla bla",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2C),
                      ),
                    ),
                    subtitle: const Text(
                      "Loren ipsun dolor sit amet con. Mattis nullam id mattis donec...",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2C2C2C),
                      ),
                    ),
                    trailing: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const News2Page())));
                        },
                        child: const Text(
                          "Batafsil",
                          style: TextStyle(
                              color: Color(0xFF5580EE),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
