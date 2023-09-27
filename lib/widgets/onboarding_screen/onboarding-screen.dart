import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_doorlock/config/colors.dart';
import 'package:smart_doorlock/utils/shared_preferences.dart';
import 'package:smart_doorlock/widgets/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  final iniSharedPreferences _preferences = iniSharedPreferences();
  // @override
  // void initState() {
  //   _pageController = PageController(initialPage: 0);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GloblaColors.backgroundColor,
      body: SafeArea(
        child: PageView.builder(
          itemCount: demo_data.length,
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          itemBuilder: (context, index) => Stack(
            alignment: AlignmentDirectional.center,
            children: [
              OnboardingContent(
                image: demo_data[index].images,
                title: demo_data[index].titles,
                description: demo_data[index].descriptions,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 680),
                child: _buildButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton() {
    return Column(
      children: [
        _currentPage == demo_data.length - 1
            ? MyTextButton(
                buttonName: 'Mulai',
                onPressed: () {
                  _preferences.setFirsLaunchValue(false);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyHomePage(),
                    ),
                  );
                },
                bgColor: GloblaColors.buttonColors,
              )
            : Column(
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: WormEffect(
                      dotColor: GloblaColors.textColors,
                      activeDotColor: GloblaColors.buttonColors,
                      dotHeight: 10,
                      dotWidth: 10,
                      type: WormType.thinUnderground,
                    ),
                  ),
                ],
              )
      ],
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
    return Column(
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
    );
  }
}

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
    required this.bgColor,
  }) : super(key: key);

  final String buttonName;
  final VoidCallback onPressed;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(buttonName),
              ],
            ),
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              side: BorderSide(width: 2, color: GloblaColors.textColors),
              padding: EdgeInsets.all(10.0),
              fixedSize: Size(150, 10),
              textStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: GloblaColors.textColors,
              ),
              primary: GloblaColors.buttonColors,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
