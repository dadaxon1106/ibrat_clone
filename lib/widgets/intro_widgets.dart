import 'package:flutter/material.dart';
class IntroWidget extends StatelessWidget {
 final String image;
 final String title;
 final String subtitle;
  const IntroWidget({super.key,required this.image,required this.title,required this.subtitle});


  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("$image",height: MediaQuery.of(context).size.height * 0.34,),
       const SizedBox(height: 20),
        Text("$title",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
        SizedBox(height: 10),
        Text("$subtitle",style: TextStyle(color: Colors.grey,fontSize: 20),textAlign: TextAlign.center,),
      ],
    );
  }
}
