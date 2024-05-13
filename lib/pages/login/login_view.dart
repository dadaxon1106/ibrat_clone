import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibrat_clone/pages/home/home_state.dart';
import 'package:ibrat_clone/pages/home/home_view.dart';

const List<String> list = ["Uzbekistan", "America", "Russia", "Iran"];

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String dropDown = list.first;
  String field = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        leading: const Icon(Icons.arrow_back_ios_new_outlined, size: 22),
        title: const Text(
          "Orqaga",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text(
                "Telefon raqamingizni \nkiriting",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 14),
              const Text(
                "Iltimos, mamlakat kodingizni tasdiqlang va \ntelefon raqamingizni kiriting",
                style: TextStyle(fontSize: 20, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 28),
              const Text(
                "Mamlakat",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                child: DropdownButton(
                  value: dropDown,
                  borderRadius: BorderRadius.circular(20),
                  icon: const Icon(Icons.arrow_forward_ios),
                  underline: const SizedBox.shrink(),
                  isExpanded: true,
                  items: list.map<DropdownMenuItem<String>>(
                    (String value) {
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    },
                  ).toList(),
                  onChanged: (value) {
                    setState(() {
                      dropDown = value!;
                    });
                  },
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Telefon raqamingiz",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 14),
              Container(
                padding: const EdgeInsets.all(12),
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    dropDown == 'Uzbekistan'
                        ? const Text(
                            "+998",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          )
                        : const Text(
                            "+778",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        onTap: () {
                          debugPrint("$field");
                        },
                        onChanged: (String value) {
                          setState(() {
                            field = value;
                          });
                        },
                        cursorColor: Colors.orange,
                        cursorHeight: 24,
                        style: const TextStyle(
                            color: Colors.black, fontSize: 22,),
                        cursorOpacityAnimates: true,
                        textAlign: TextAlign.start,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          border: InputBorder.none,
                          hintText: "Telefon Raqamingiz",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  if (field.length >= 7) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        CupertinoPageRoute(builder: (_) => const HomeState()),
                        (route) => false);
                  } else {
                    showDialog(
                        context: context, builder: (ctx) => AlertDialog(
                      title:const Column(
                        children: [
                           Text("XATO",style: TextStyle(fontSize: 22),),
                          Text("Telefon Raqam Xato kiritilgan"),

                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ));
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.orange,
                  ),
                  child: const Text(
                    "Davom Etish",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        8,
                        (index) => Container(
                              height: 2,
                              color: Colors.grey,
                              width: 14,
                            )),
                  )),
                  const Text(
                    "yoki",
                    style: TextStyle(fontSize: 20),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        8,
                        (index) => Container(
                              height: 2,
                              color: Colors.grey,
                              width: 14,
                            )),
                  )),
                ],
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.orangeAccent,
                          offset: Offset(0, 1),
                          blurRadius: 2,
                        )
                      ]),
                  child: const Text(
                    "Google orqali kiring",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
