import 'package:flutter/material.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomSheet(
          onClosing: () {},
          builder: (context) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      decoration: const BoxDecoration(),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 15,
                        itemBuilder: ((context, index) {
                          return ListTile(
                            dense: false,
                            enabled: false,
                            leading: const CircleAvatar(
                              radius: 25,
                            ),
                            title: const Text("Sarah Bakerson"),
                            subtitle:
                                const Text("Hello bro, how are you today..."),
                            trailing: Container(
                             width: 100,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Icon(Icons.thumbs_up_down,
                                      size: 20, color: Colors.white),
                                  Icon(Icons.thumbs_up_down,
                                      size: 20, color: Colors.white),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    TextField(),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
