import 'package:flutter/material.dart';
import 'package:ibrat_clone/widgets/course_widget.dart';

import '../../utils/utils.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class CourseOneView extends StatefulWidget {
  const CourseOneView({super.key});

  @override
  State<CourseOneView> createState() => _CourseOneViewState();
}

class _CourseOneViewState extends State<CourseOneView> {
  SampleItem? item;
  final GlobalKey<PopupMenuButtonState> _menuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000814),
      appBar: AppBar(
        backgroundColor: const Color(0xFF000814),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.04),
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.blue),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.diamond_outlined,
                        color: Colors.blue,
                        size: MediaQuery.of(context).size.width * 0.06,
                      ),
                      const Text(
                        "100",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                PopupMenuButton(
                  position: PopupMenuPosition.under,
                  color: const Color(0xFF023047),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  icon: IconButton(onPressed: (){
                    return _menuKey.currentState?.showButtonMenu();
                  }, icon:const Icon(Icons.more_vert,color: Colors.white,)),

                  initialValue: item,
                  onSelected: (SampleItem selectedItem) {
                    setState(() {
                      item = selectedItem;
                    });
                  },
                  itemBuilder: (ctx) => [
                    const PopupMenuItem(

                      value: SampleItem.itemOne,
                      child: Text("Item 1",style:  TextStyle(color: Colors.white),),
                    ),
                    const PopupMenuItem(
                      textStyle: TextStyle(color: Colors.white),
                      value: SampleItem.itemTwo,
                      child: Text("Item 2",style:  TextStyle(color: Colors.white),),
                    ),
                    const PopupMenuItem(
                      textStyle: TextStyle(color: Colors.white),
                      value: SampleItem.itemThree,
                      child: Text("Item 3",style:  TextStyle(color: Colors.white),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const CourseWidget(
              levelOne: Strings.levelOne,
              levelTwo: Strings.levelTwo,
              levelThree: Strings.levelThree,
              vocab: Strings.vocab,
            ),
          ],
        ),
      ),
    );
  }
}
