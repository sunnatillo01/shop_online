import 'package:flutter/material.dart';
import 'package:shop/screen/sms_page.dart';

import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  static const String id = "registere_page";

  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var isLoading = false;
  var phoneController = TextEditingController();

  _doSms() {
    // String phone = phoneController.text.toString().trim();
    // if (phone.isEmpty) return;
    Navigator.pushReplacementNamed(context, SmsPage.id);
  }

  _callLoginPage() {
    Navigator.pushReplacementNamed(context, LoginPage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Register",
                  style: TextStyle(color: Colors.blue, fontSize: 33),
                ),
                const SizedBox(height: 40,),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 55,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    // color: Colors.white.withOpacity,
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                TextFormField(
                  decoration:InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                      prefix: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          '+9989',style: TextStyle(fontSize: 15,),
                        ),
                      ),
                      labelText: "Phone number"
                  ),
                  validator: (value){
                    if(value!.isEmpty||!RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value)){
                      return "Enter correct name";
                    }else{
                      return null;
                    }
                  },
                ),

                // Container(
                //   margin: const EdgeInsets.only(top: 20),
                //   height: 60,
                //   padding: const EdgeInsets.only(left: 10, right: 10),
                //   decoration: BoxDecoration(
                //     // color: Colors.white.withOpacity(0.2),
                //     borderRadius: BorderRadius.circular(7),
                //   ),
                //   child: TextField(
                //     controller: passwordController,
                //     obscureText: true,
                //     style: const TextStyle(color: Colors.black),
                //     decoration: const InputDecoration(
                //         hintText: "Enter the code",
                //         border: InputBorder.none,
                //         helperStyle:
                //             TextStyle(fontSize: 17, color: Colors.white70)),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    _doSms();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 90),
                    height: 57,
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
                const SizedBox(height:10),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Do you have an account ?",
                        style: TextStyle(color: Colors.black54, fontSize: 17,),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          _callLoginPage();
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
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
