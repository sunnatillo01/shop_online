import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const String id="profile_page";
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              const Center(
                child: Text(
                  "My profile",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // #avatar
                      Stack(
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Colors.purpleAccent, width: 2)),
                            padding: const EdgeInsets.all(2),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(75),
                                child:  const Image(
                                  image: AssetImage(
                                      "assets/images/user.png"),
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                            ),
                          ),
                          Container(
                            height: 77.5,
                            width: 77.5,
                            alignment: Alignment.bottomRight,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: () {

                                  },
                                  icon: const Icon(
                                    Icons.add_circle,
                                    color: Colors.purple,
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("   Shaxriyor Oripov",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          )),
                      Row(
                        children:const [
                           Text("#2389955"),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(width: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:const [
                       Icon(Icons.edit_note_sharp),
                       Text("Tahrirlash",style: TextStyle(color: Colors.blue,fontSize: 15),),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter your name"
                ),
                validator: (value){
                  if(value!.isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                    return "Enter correct name";
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Enter your surname"
                ),
                validator: (value){
                  if(value!.isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                    return "Enter correct surname";
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Enter your number"
                ),
                validator: (value){
                  if(value!.isEmpty||!RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value)){
                    return "Enter correct number";
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
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
             const SizedBox(height: 25,),
             const Text("Tashqi sozlamalar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
    );
  }
}

