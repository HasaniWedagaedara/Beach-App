
import 'package:beachapp/Districts/GalleBeaches.dart';
import 'package:beachapp/widgets/BottomNavigationBar.dart';
import 'package:beachapp/widgets/TextSize25.dart';
import 'package:beachapp/widgets/appbar.dart';
import 'package:flutter/material.dart';

class DistrictList extends StatefulWidget {
  const DistrictList({super.key});

  @override
  State<DistrictList> createState() => _DistrictListState();
}

class _DistrictListState extends State<DistrictList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarcommon(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/1.jpg'), 
              fit: BoxFit.cover,
            ),
          ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.builder(
            itemCount: 1, // Set the number of rows
            itemBuilder: (BuildContext context, int index) {
              // Create two clickable containers per row
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 19.0),
                    Row(
                      children: [
                        SizedBox(height: 14.0),
                        buildClickableContainer(context, "Ampara", GalleBeaches()),
                        SizedBox(width: 14.0),
                        buildClickableContainer(context, "Batticaloa", GalleBeaches()),
                      ],
                      
                    ),
                    SizedBox(height: 14.0),
                        
                    Row(
                      children: [
                        SizedBox(height: 14.0),
                        buildClickableContainer(context, "Colombo", GalleBeaches()),
                        SizedBox(width: 14.0),
                        buildClickableContainer(context, "Galle", GalleBeaches()),
                      ],
                    ),
                    SizedBox(height: 14.0),
                        
                    Row(
                      children: [
                        SizedBox(height: 14.0),
                        buildClickableContainer(context, "Gampaha", GalleBeaches()),
                        SizedBox(width: 14.0),
                        buildClickableContainer(context, "Jaffna", GalleBeaches()),
                      ],
                    ),
                    SizedBox(height: 14.0),
                        
                    Row(
                      children: [
                        SizedBox(height: 14.0),
                        buildClickableContainer(context, "Hambanthota", GalleBeaches()),
                        SizedBox(width: 14.0),
                        buildClickableContainer(context, "Kaluthara", GalleBeaches()),
                      ],
                    ),
                    SizedBox(height: 14.0),
                        
                    Row(
                      children: [
                        SizedBox(height: 14.0),
                        buildClickableContainer(context, "Kilinochchi", GalleBeaches()),
                        SizedBox(width: 14.0),
                        buildClickableContainer(context, "Mannar", GalleBeaches()),
                      ],
                    ),
                    SizedBox(height: 14.0),
                        
                    Row(
                      children: [
                        SizedBox(height: 14.0),
                        buildClickableContainer(context, "Matara", GalleBeaches()),
                        SizedBox(width: 14.0),
                        buildClickableContainer(context, "Mulathiv", GalleBeaches()),
                      ],
                    ),
                    SizedBox(height: 14.0),
                        
                    Row(
                      children: [
                        SizedBox(height: 14.0),
                        buildClickableContainer(context, "Puttalam", GalleBeaches()),
                        SizedBox(width: 14.0),
                        buildClickableContainer(context, "Trinco", GalleBeaches()),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation2(),
    );
  }

  Widget buildContainer(String name) {
    return Container(
      width: 180.0,
      height: 55.0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 241, 243),
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: TextSize25(text: name, color: Colors.black),
      ),
    );
  }

  Widget buildClickableContainer(
      BuildContext context, String name, Widget page) {
    return GestureDetector(
      onTap: () {
        // Navigate to the corresponding page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: buildContainer(name),
    );
  }
}
