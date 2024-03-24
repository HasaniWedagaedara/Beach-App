import 'package:beachapp/widgets/App%20Bar.dart';
import 'package:beachapp/widgets/BottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final String? imageUrl;
  final String beachName;
  final String district;
  final dynamic location;
  final String? beachLink;
  final String discription; 
  final String surf; 

  const DetailPage({
    Key? key,
    this.imageUrl,
    required this.beachName,
    required this.district,
    required this.discription,
    required this.location,
    this.beachLink,
    required this.surf, // Added surf to constructor
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarcommon2(),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 250,
                decoration: BoxDecoration(
                  image: widget.imageUrl != null
                      ? DecorationImage(
                          image: NetworkImage(widget.imageUrl!),
                          fit: BoxFit.cover,
                        )
                      : const DecorationImage(
                          image: AssetImage("assets/placeholder_image.jpg"),
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
            Positioned(
              top: 230,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.beachName,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 60, 96, 155),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          widget.district,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 60, 96, 155),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(
                          "Location : ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 49, 29, 138),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _launchMap(widget.location.latitude, widget.location.longitude);
                          },
                          child: const Text(
                            'View on Map',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(
                          "Is surfing possible : ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 49, 29, 138),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          widget.surf,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 192, 55, 40),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 49, 29, 138),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10), 
                        
                      ],
                    ),
                    const SizedBox(height: 10), 
                    Row(

                      children: [
                        
                        Expanded(
                          child: Text(
                            widget.discription, 
                            style: const TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 14, 37, 74),
                            ),
                          ),
                        ),
                      ],
                    )
                    // Add other details about the beach here
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation2(),
    );
  }

  // Function to launch map with given latitude and longitude
  _launchMap(double latitude, double longitude) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
