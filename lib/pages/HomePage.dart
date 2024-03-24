// ignore: file_names

import 'package:beachapp/widgets/TextSize25.dart';
import 'package:beachapp/widgets/TextSize35.dart';
import 'package:beachapp/widgets/Textsize18.dart';
import 'package:beachapp/widgets/responsive_button2.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

         body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/background2.jpg'),
              fit: BoxFit.cover,
              
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9),
              BlendMode.dstATop),
            ),

          ),
          child: Container(
              margin: const EdgeInsets.only(top: 50, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      TextSize35(text: "Beach Explora"),//,color:Colors.blueGrey)
                      TextSize25(text: "In Sri Lanka", size: 25, ),
                      const SizedBox(height: 5),
                      Container(
                        width: 250,
                        child: TextSize18(
                          text:"Welcome to Beach Explora, your gateway to Sri Lanka's coastal beauty.", 
                          color: const Color.fromARGB(255, 6, 0, 0) , 
                          size: 20, 
                          ),
                      ),
                      const SizedBox(height: 270),
                       ResponsiveButton2(
                        width: 120,)
                    ],
                  ),
                ],
              ), 
            ), 
         ),
    );
  }
}