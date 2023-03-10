import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginOnePage extends StatefulWidget {
  static const String id="login_one_page";
  const LoginOnePage({Key? key}) : super(key: key);

  @override
  State<LoginOnePage> createState() => _LoginOnePageState();
}

class _LoginOnePageState extends State<LoginOnePage> {

  var isLoading = false;
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();


  _doLogin() {
    String phone = phoneController.text.toString().trim();
    String password = passwordController.text.toString().trim();

    if (phone.isEmpty || password.isEmpty) return;

    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        width: MediaQuery.of(context).size.width,
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       colors: [
        //         Color.fromRGBO(0, 102, 204, 1),
        //         Color.fromRGBO(51, 153, 255, 1),
        //       ]),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Parolni unutdingizmi?",
                      style: TextStyle(color: Colors.blue, fontSize: 30),
                    ),
                    const SizedBox(height: 90,),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Telefon raqam"
                      ),
                      validator: (value){
                        if(value!.isEmpty||!RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value)){
                          return "Enter correct number";
                        }else{
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Kod ni kiriting"
                      ),
                      validator: (value){
                        if(value!.isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                          return "Enter correct password";
                        }else{
                          return null;
                        }
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        _doLogin();
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 30),
                        height: 60,
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(1.0),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Center(
                          child: Text(
                            "The next one",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
