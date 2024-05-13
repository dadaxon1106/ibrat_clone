import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ibrat_clone/pages/login/login_view.dart';
import 'package:ibrat_clone/widgets/intro_widgets.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                controller: _controller,
                children: const [
                  IntroWidget(
                    image: "assets/images/student.png",
                    title: "Nutqingizdagi ishonch",
                    subtitle:
                        "Sozlashuv darslari bilan qisqa muddat ichida sozlashishni organasiz",
                  ),
                  IntroWidget(
                    image: "assets/images/student_two.png",
                    title: "O'rganishga vaqt ajrating",
                    subtitle:
                        "O'rganishni odat qilib va uni kundalik vazifangizga aylantiring",
                  ),
                  IntroWidget(
                    image: "assets/images/student.png",
                    title: "Maxsus darslar",
                    subtitle:
                        "Organish va eslab qolish uchun turli xil uslublardan foydalaning",
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 700),
                  height: 10,
                  width: 10,
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: currentIndex != index ? Colors.white : Colors.orange,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Expanded(
                child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    if (currentIndex != 2) {
                      currentIndex++;
                      _controller.animateToPage(
                        currentIndex,
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.easeIn,
                      );
                      debugPrint("$currentIndex");
                      setState(() {});
                      return;
                    } else {
                      Navigator.of(context).push(_createRoute());
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.orange,
                    ),
                    child: currentIndex != 2
                        ? const Text(
                            "Keyingi",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )
                        : const Text(
                            "Boshlash",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                  ),
                ),
                const Spacer(),
                const SizedBox(height: 20),
                const Text(
                  "Ro'yxatdan o'tganmisiz?",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Kirish",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (ctx, animation, secondaryAnimation) => const LoginView(),transitionsBuilder: (context,animation,secondaryAnimation,child){
        var tween = Tween<Offset>(begin: const Offset(0.0, 1.0),end: Offset.zero);
        var curveTween = CurveTween(curve: Curves.ease);
        return SlideTransition(position: animation.drive(curveTween).drive(tween),child: child,);

  });
}
