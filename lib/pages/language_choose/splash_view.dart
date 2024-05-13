import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ibrat_clone/pages/intro/intro_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _State();
}

class _State extends State<SplashScreen> {
  bool isUzbekSelected = false;
  bool isRussianSelected = false;
  bool isEnglishSelected = false;
  bool isTurkishSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Spacer(),
        const Center(
            child: Text(
          "Dastur tilini tanlang",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        )),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            setState(() {
              isUzbekSelected = !isUzbekSelected;
              isRussianSelected = false;
              isEnglishSelected = false;
              isTurkishSelected = false;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            height: isUzbekSelected ? 80 : 76,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: isUzbekSelected ? Colors.orangeAccent : Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("assets/images/uzbek.png"),
                ),
                const SizedBox(width: 10),
                Text(
                  "O'zbekcha",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: isUzbekSelected ? Colors.white : Colors.black),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          height: 76,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: const Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/images/american.jpg"),
              ),
              SizedBox(width: 10),
              Text(
                "English",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          height: 76,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: const Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/images/russian.png"),
              ),
              SizedBox(width: 10),
              Text(
                "Русский",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          height: 76,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: const Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/images/qaraqalpaq.png"),
              ),
              SizedBox(width: 10),
              Text(
                "Qaraqalpaqsha",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            if (!isUzbekSelected) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content:const Text("Error"),
                  duration: const Duration(seconds: 1),

                ),
              );
            }else{
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (ctx)=> IntroView()), (route) => false);
            }

          },
          child: Container(
            alignment: Alignment.center,
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              border:
                  Border.all(color: isUzbekSelected ? Colors.white : Colors.black),
              borderRadius: BorderRadius.circular(16),
              color: isUzbekSelected ? Colors.orange : Colors.white,
            ),
            child: Text(
              "Keyingi",
              style: TextStyle(
                  color: isUzbekSelected ? Colors.white : Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 50),
      ],
    ));
  }
}
