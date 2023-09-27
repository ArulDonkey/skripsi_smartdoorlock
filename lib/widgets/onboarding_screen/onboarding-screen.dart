import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_doorlock/config/colors.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: demo_data.length,
          controller: _pageController,
          itemBuilder: (context, index) => OnboardingContent(
            image: demo_data[index].images,
            title: demo_data[index].titles,
            description: demo_data[index].descriptions,
          ),
        ),
      ),
    );
  }
}

class Onboard {
  final String images, titles, descriptions;

  Onboard({
    required this.images,
    required this.titles,
    required this.descriptions,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    images: 'assets/images/taxi-smart-house-1.png',
    titles: 'Smart Door Lock',
    descriptions: 'Sistem pengamanan ganda untuk pintu\nrumah',
  ),
  Onboard(
    images: 'assets/images/taxi-cloud-software.png',
    titles: 'Cloud',
    descriptions: 'Menyimpan gambar setiap pengguna\nyang memasuki pintu rumah',
  ),
  Onboard(
    images: 'assets/images/taxi-task-management.png',
    titles: 'Controller',
    descriptions:
        'Sistem akan mengirimkan gambar\npengguna yang akan masuk kerumah\nbeserta keterangan dikenali atau tidak',
  ),
];

class OnboardingContent extends StatelessWidget {
  const OnboardingContent(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GloblaColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 263,
              width: 261,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: GloblaColors.textColors,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              description,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: GloblaColors.textColors,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
