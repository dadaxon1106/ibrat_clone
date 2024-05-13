

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibrat_clone/pages/course_detail/course_one.dart';
import 'package:ibrat_clone/utils/utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF023047),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage("assets/images/profile_image.webp"),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                      size: 30,
                    ))
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              Strings.name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              Strings.subtitle,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 30),
            const Text(
              Strings.allCourse,
              style: TextStyle(
                  color: Colors.white, fontSize: 20, letterSpacing: 1),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const CourseOneView()));
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                width: double.maxFinite,
                height: 130,
                decoration: BoxDecoration(
                  color: const Color(0xFF14213d),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          Strings.languageOne,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const Text(
                          Strings.teacherOne,
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        LinearPercentIndicator(
                          width: 240,
                          lineHeight: 10,
                          percent: 0.2,
                          backgroundColor: Colors.white,
                          progressColor: Colors.green,
                          barRadius: const Radius.circular(10),
                          trailing:const Text(
                            "3%",
                            style: TextStyle(color: Colors.green, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                 const CircleAvatar(
                      radius: 34,
                   backgroundColor: Colors.blue,
                   backgroundImage: AssetImage("assets/images/eng.png"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.maxFinite,
              height: 130,
              decoration: BoxDecoration(
                color: const Color(0xFF14213d),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        Strings.subjectOne,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const Text(
                        Strings.teacherTwo,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      LinearPercentIndicator(
                        width: 240,
                        lineHeight: 10,
                        percent: 0.2,
                        backgroundColor: Colors.white,
                        progressColor: Colors.green,
                        barRadius: const Radius.circular(10),
                        trailing:const Text(
                          "3%",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage("assets/images/person_one.webp"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.maxFinite,
              height: 130,
              decoration: BoxDecoration(
                color: const Color(0xFF14213d),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        Strings.languageTwo,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const Text(
                        Strings.teacherThree,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      LinearPercentIndicator(
                        width: 240,
                        lineHeight: 10,
                        percent: 0.2,
                        backgroundColor: Colors.white,
                        progressColor: Colors.green,
                        barRadius: const Radius.circular(10),
                        trailing:const Text(
                          "3%",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage("assets/images/ru.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.maxFinite,
              height: 130,
              decoration: BoxDecoration(
                color: const Color(0xFF14213d),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        Strings.languageThree,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const Text(
                        Strings.teacherFour,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      LinearPercentIndicator(
                        width: 240,
                        lineHeight: 10,
                        percent: 0.2,
                        backgroundColor: Colors.white,
                        progressColor: Colors.green,
                        barRadius: const Radius.circular(10),
                        trailing:const Text(
                          "3%",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage("assets/images/es.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.maxFinite,
              height: 130,
              decoration: BoxDecoration(
                color: const Color(0xFF14213d),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        Strings.languageFour,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const Text(
                        Strings.teacherFive,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      LinearPercentIndicator(
                        width: 240,
                        lineHeight: 10,
                        percent: 0.2,
                        backgroundColor: Colors.white,
                        progressColor: Colors.green,
                        barRadius: const Radius.circular(10),
                        trailing:const Text(
                          "3%",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 34,
                    backgroundImage: AssetImage("assets/images/ind.png"),
                    backgroundColor: Colors.blue,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.maxFinite,
              height: 130,
              decoration: BoxDecoration(
                color: const Color(0xFF14213d),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        Strings.languageFive,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const Text(
                        Strings.teacherSixth,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      LinearPercentIndicator(
                        width: 240,
                        lineHeight: 10,
                        percent: 0.2,
                        backgroundColor: Colors.white,
                        progressColor: Colors.green,
                        barRadius: const Radius.circular(10),
                        trailing:const Text(
                          "3%",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.blue,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.maxFinite,
              height: 130,
              decoration: BoxDecoration(
                color: const Color(0xFF14213d),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        Strings.languageSixth,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const Text(
                        Strings.teacherSeventh,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      LinearPercentIndicator(
                        width: 240,
                        lineHeight: 10,
                        percent: 0.2,
                        backgroundColor: Colors.white,
                        progressColor: Colors.green,
                        barRadius: const Radius.circular(10),
                        trailing:const Text(
                          "3%",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
