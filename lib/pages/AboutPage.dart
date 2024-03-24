import 'package:beachapp/widgets/BottomNavigationBar.dart';
import 'package:beachapp/widgets/Textsize18.dart';
import 'package:beachapp/widgets/appbar.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarcommon(),

        body: Column(
          children: [
            TextSize18(
                text:
                   "Welcome to Beach Explora, your gateway to discovering the pristine beauty of Sri Lanka's coastal wonders. Immerse yourself in a world of sun-kissed shores, azure waters, and hidden gems along the Sri Lankan coastline. Explore breathtaking beaches, plan your next seaside adventure, and experience the serenity of nature's coastal marvels with Beach Explora mobile app.",
                color: Colors.black,
                size: 14,
            ),
          ],
        ),
bottomNavigationBar: BottomNavigation2(),
    );

  }
}