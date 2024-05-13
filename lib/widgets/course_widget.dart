import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibrat_clone/utils/utils.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../pages/main_course_view/main_course.dart';

class CourseWidget extends StatelessWidget {
  final String levelOne;
  final String levelTwo;
  final String levelThree;
  final String vocab;

  const CourseWidget(
      {super.key,
      required this.levelOne,
      required this.levelTwo,
      required this.levelThree,
      required this.vocab});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 104,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFF14213d),
          ),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.blue,
                ),
                child: const ListTile(
                  leading: Icon(
                    Icons.checklist_sharp,
                    color: Colors.white,
                  ),
                  title: Text(
                    Strings.checkLevel,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(8),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.bar_chart,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "B2 Daraja",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        )
                      ],
                    ),
                    Text(
                      "05.04.2024",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Modullar",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            )),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (ctx)=> const MainCourse()));
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            height: 110,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF22223b),
                border: Border.all(color: Colors.grey.shade600)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      levelOne,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.grey,
                              size: 26,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "15",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.question_square,
                              color: Colors.grey,
                              size: 26,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "20",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Colors.grey,
                              size: 26,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "50",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                CircularPercentIndicator(
                  center: const Text(
                    "25%",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  radius: 40,
                  percent: 0.4,
                  progressColor: Colors.green,
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(12),
          height: 110,
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF22223b),
              border: Border.all(color: Colors.grey.shade600)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    levelTwo,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.grey,
                            size: 26,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "15",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(width: 8),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.question_square,
                            color: Colors.grey,
                            size: 26,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "20",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(width: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.grey,
                            size: 26,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "50",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              CircularPercentIndicator(
                center: const Text(
                  "25%",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                radius: 40,
                percent: 0.4,
                progressColor: Colors.green,
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          height: 110,
          padding:const EdgeInsets.all(12),
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF22223b),
              border: Border.all(color: Colors.grey.shade600)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      levelThree,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.grey,
                              size: 26,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "15",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.question_square,
                              color: Colors.grey,
                              size: 26,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "20",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Colors.grey,
                              size: 26,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "50",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ],
              ),
              CircularPercentIndicator(
                center: const Text(
                  "25%",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                radius: 40,
                percent: 0.4,
                progressColor: Colors.green,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          height: 110,
          padding:const EdgeInsets.all(12),
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF22223b),
              border: Border.all(color: Colors.grey.shade600)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vocab,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.grey,
                            size: 26,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "15",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(width: 8),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.question_square,
                            color: Colors.grey,
                            size: 26,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "20",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(width: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.grey,
                            size: 26,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "50",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              CircularPercentIndicator(
                center: const Text(
                  "25%",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                radius: 40,
                percent: 0.4,
                progressColor: Colors.green,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
