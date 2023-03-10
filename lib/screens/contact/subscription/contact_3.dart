import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _controller1 = TextEditingController();
  bool _chec = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                                  Icons.arrow_back,
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
                            controller: _controller1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              const Divider(
                height: 1.0,
                thickness: 1,
                color: Colors.black,
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
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
                          subtitle:
                              const Text("Hello bro, how are you today..."),
                          trailing: Column(
                            children: const [
                              Text("20:15"),
                              Icon(Icons.done, color: Colors.blue),
                            ],
                          ),
                        );
                      })),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
