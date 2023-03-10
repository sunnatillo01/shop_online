import 'package:flutter/material.dart';

class DescreptionPage extends StatelessWidget {
  DescreptionPage({super.key});

  final List<String> _texts = ['oq', 'qora', 'yashil', 'oq', 'qora'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Neo Qled 4k Smart TV QN90A',
                  style: TextStyle(
                      color: Color(0xFF14191F),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: const [
                    Icon(Icons.visibility_off_outlined),
                    SizedBox(width: 4.0),
                    Text(
                      '335k',
                      style: TextStyle(
                          color: Color(0xFFBEBEBE),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 18.0),
            const Text(
              'GIGABYTE AERO 15 XC Core i7-10870H, 16GB(2933 MHZ), 512 NVME SSD, RTX 3070, 15,6 (1920x1080) IPS 144HZ.',
              style: TextStyle(
                  color: Color(0xFF81868C),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ranglar:',
                  style: TextStyle(
                      color: Color(0xFF14191F),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width * 1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: _texts.length,
                    itemBuilder: (context, indeks) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: Colors.grey,
                          ),
                          child: Center(child: Text(_texts[indeks])),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "O'xshashlar",
                  style: TextStyle(
                      color: Color(0xFF14191F),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 1,
                  color: const Color(0xFFEAEAEA),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Narx',
                        style: TextStyle(
                            color: Color(0xFF505050),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(width: 16.0),
                      Row(
                        children: [
                          const Text(
                            "1100",
                            style: TextStyle(
                                color: Color(0xFFF23636),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(width: 3.0),
                          const Text(
                            "1300",
                            style: TextStyle(
                                color: Color(0xFF14191F),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3),
                          Row(
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:  MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side:
                                          const BorderSide(color: Colors.blue),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Sotuvchi bilan aloqa',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              ElevatedButton(
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
                                  'Sotib olish',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
