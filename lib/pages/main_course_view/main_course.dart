import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibrat_clone/utils/utils.dart';
import 'package:line_icons/line_icons.dart';

class MainCourse extends StatelessWidget {
  const MainCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003049),
      body: AnnotatedRegion(
        value:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(

              pinned: true,
              backgroundColor: const Color(0xFF003049),
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                background: SizedBox(
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            LineIcons.upload,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              expandedHeight: MediaQuery.of(context).size.height * 0.25,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      height: MediaQuery.of(context).size.height * 1.8,
                      decoration: BoxDecoration(
                          color: const Color(0xFF4a4e69),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: List.generate(14, (index) => Container(
                          margin:const EdgeInsets.only(bottom: 8),
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.red
                          ),
                        )),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
