import 'dart:js_util';

import 'package:flutter/material.dart';

class CharasterPage extends StatelessWidget {
  const CharasterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomSheet(
          onClosing: () {},
          elevation: 5,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 2,
                      spreadRadius: 0.1,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              splashRadius: 20,
                              icon: const Icon(Icons.close),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: const [
                          Text(
                            "Type:",
                            style: TextStyle(
                                color: Color(0xFF14191F),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            "Gaming",
                            style: TextStyle(
                                color: Color(0xFF7C7C7C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 20.0,
                        color: Colors.black,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Brand:",
                            style: TextStyle(
                                color: Color(0xFF14191F),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            "Lenova",
                            style: TextStyle(
                                color: Color(0xFF7C7C7C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 20.0,
                        color: Colors.black,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Manufacturers:",
                            style: TextStyle(
                                color: Color(0xFF14191F),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            "Lenova",
                            style: TextStyle(
                                color: Color(0xFF7C7C7C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 20.0,
                        color: Colors.black,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Screen resolution:",
                            style: TextStyle(
                                color: Color(0xFF14191F),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            "1920x1080",
                            style: TextStyle(
                                color: Color(0xFF7C7C7C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 20.0,
                        color: Colors.black,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Aspect ratio:",
                            style: TextStyle(
                                color: Color(0xFF14191F),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            "16:9",
                            style: TextStyle(
                                color: Color(0xFF7C7C7C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 20.0,
                        color: Colors.black,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Maxium frequency HZ:",
                            style: TextStyle(
                                color: Color(0xFF14191F),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            "165",
                            style: TextStyle(
                                color: Color(0xFF7C7C7C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 20.0,
                        color: Colors.black,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Response time ms:",
                            style: TextStyle(
                                color: Color(0xFF14191F),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            "1",
                            style: TextStyle(
                                color: Color(0xFF7C7C7C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 20.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
