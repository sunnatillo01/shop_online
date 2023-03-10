import 'package:flutter/material.dart';


class News3Page extends StatefulWidget {
  static const String id = "news3_page";
  const News3Page({super.key});

  @override
  State<News3Page> createState() => _News3PageState();
}

class _News3PageState extends State<News3Page> {
   final _controller = TextEditingController();
  bool _chec = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0, left: 12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        if (_chec == true)
                          Expanded(
                            flex: 1,
                            child: IconButton(
                                splashRadius: 20.0,
                                onPressed: () {
                                  _chec = false;
                                  setState(() {});
                                },
                                icon: const Icon(
                                  Icons.chevron_left,
                                  color: Colors.black,
                                  size: 25.0,
                                )),
                          ),
                        Expanded(
                          flex: 5,
                          child: TextField(
                            onTap: () {
                              _chec = true;
                              setState(() {});
                            },
                            decoration: InputDecoration(
                              hintText: "Chat qidiruvi",
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  color: Color(0xff5580EE),
                                ),
                              ),
                            ),
                            controller: _controller,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      ])));
  }
}