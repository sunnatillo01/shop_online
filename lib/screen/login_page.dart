import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_one_page.dart';

class LoginPage extends StatefulWidget {
  static const String id="login_page";
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var isLoading = false;
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();


  // ignore: unused_element
  _doLogin() {
    String phone = phoneController.text.toString().trim();
    String password = passwordController.text.toString().trim();

    if (phone.isEmpty || password.isEmpty) return;
 Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const HomePage();
      }));
 //   Navigator.pushReplacementNamed(context, HomePage.id);
  }

  _callLoginOnePage() {
    Navigator.pushReplacementNamed(context, LoginOnePage.id);
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
                      "Log in",
                      style: TextStyle(color: Colors.blue, fontSize: 33),
                    ),
                    const SizedBox(height: 90,),
                    TextFormField(
                      decoration: const InputDecoration(
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
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Enter your password"
                      ),
                      validator: (value){
                        if(value!.isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                          return "Enter correct password";
                        }else{
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 10,),
                    GestureDetector(
                      onTap: () {
                        _callLoginOnePage();
                      },
                      child:  Container(
                        margin: const EdgeInsets.only(left: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text("Parolni unutdingizmi",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.blue),),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const HomePage();
      }));
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
                            style: TextStyle(color: Colors.white, fontSize: 19),
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
