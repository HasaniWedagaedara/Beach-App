
import 'package:beachapp/pages/DetailPage.dart';
import 'package:beachapp/widgets/BottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class GalleBeaches extends StatefulWidget {
  const GalleBeaches({Key? key}) : super(key: key);

  @override
  State<GalleBeaches> createState() => _GalleBeachesState();
}

class _GalleBeachesState extends State<GalleBeaches> {
  late CollectionReference<Map<String, dynamic>> beachesCollection;
  late String imageUrl;
  final storage = FirebaseStorage.instance;

  @override
  void initState() {
    super.initState();
    // Initialize Firebase and get a reference to the beaches collection
    beachesCollection = FirebaseFirestore.instance.collection('beaches');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: StreamBuilder<QuerySnapshot>(
          stream: beachesCollection.snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }

            return ListView.builder(
              itemCount: (snapshot.data!.docs.length / 2).ceil(),
              itemBuilder: (BuildContext context, int index) {
                int firstIndex = index * 2;
                int secondIndex = firstIndex + 1;
                // Ensure secondIndex doesn't exceed the length of docs
                if (secondIndex >= snapshot.data!.docs.length) {
                  secondIndex = -1; // If it exceeds, set it to -1 to indicate no data for the second cell
                }

                var beachData1;
                var beachName1;
                var imageUrl1;
                var district1;
                var location1;
                var discription1;
                var surf1;

                if (firstIndex < snapshot.data!.docs.length) {
                  beachData1 = snapshot.data!.docs[firstIndex];
                  beachName1 = beachData1['name'];
                  imageUrl1 = beachData1['image']?.replaceAll('"', '');
                  district1 = beachData1['district'];
                  location1 = beachData1['location'];
                  discription1 = beachData1['discription'];
                  surf1 = beachData1['surf'] ; 
                }

                var beachData2;
                var beachName2;
                var imageUrl2;
                var district2;
                var location2;
                var discription2;
                var surf2;

                if (secondIndex != -1) {
                  beachData2 = snapshot.data!.docs[secondIndex];
                  beachName2 = beachData2['name'];
                  imageUrl2 = beachData2['image']?.replaceAll('"', '');
                  district2 = beachData2['district'];
                  location2 = beachData2['location'];
                  discription2 = beachData2['discription'];
                  surf2 = beachData2['surf'] ?? false; // Default to false if surf field is not available
                }

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // Align single element row with other rows
                    children: [
                      buildBeachCell(context, imageUrl1, beachName1, district1, location1, discription1, surf1),
                      if (secondIndex != -1)
                        buildBeachCell(context, imageUrl2, beachName2, district2, location2, discription2, surf2),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigation2(),
    );
  }

  Widget buildBeachCell(BuildContext context, String? imageUrl, String beachName,
      String? district, GeoPoint? location, String description, String surf) { 
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  imageUrl: imageUrl,
                  beachName: beachName,
                  district: district ?? "Unknown",
                  location: location,
                  discription: description ?? "Unknown",
                  surf: surf ?? "umknown",
                ),
              ),
            );
          },
          child: Center(
            child: Container(
              width: 175.0,
              height: 140.0,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 241, 243),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  imageUrl != null
                      ? Image.network(
                    imageUrl,
                    height: 70,
                    width: 200,
                    fit: BoxFit.cover,
                  )
                      : Image.asset(
                    "assets/background2.jpg",
                    height: 70,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 5), // Adjust spacing between image and text
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            imageUrl: imageUrl,
                            beachName: beachName,
                            district: district ?? "Unknown",
                            location: location,
                            discription: description ?? "Unknown",
                            surf: surf ?? "umknown",
                          ),
                        ),
                      );
                    },
                    child: Text(
                      beachName,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}