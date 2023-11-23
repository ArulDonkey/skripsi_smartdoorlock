import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_doorlock/config/colors.dart';
import 'package:smart_doorlock/widgets/nav_bar_slide.dart';

class HalamanAbout extends StatelessWidget {
  const HalamanAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBarSlide(),
      backgroundColor: GloblaColors.backgroundColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'About App',
              style: GoogleFonts.poppins(
                color: GloblaColors.textColors,
                fontSize: 20,
              ),
            ),
          ],
        ),
        backgroundColor: GloblaColors.buttonColors,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset('assets/images/profile-dev.png'),
          ),
          SizedBox(height: 20),
          Text(
            'Pahaerul Mutaqin',
            style: GoogleFonts.poppins(
              color: GloblaColors.textColors,
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '1197050103',
            style: GoogleFonts.poppins(
              color: GloblaColors.textColors,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 50),
          Text(
            'Teknik Informatika\nUIN Sunan Gunung Djati\nBandung',
            style: GoogleFonts.poppins(
              color: GloblaColors.textColors,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Divider(
            height: 10,
            thickness: 3,
            indent: 80,
            endIndent: 80,
            color: Colors.black,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svgs/email-mail-message-svgrepo-com.svg',
                height: 40,
              ),
              SizedBox(width: 30),
              SvgPicture.asset(
                'assets/svgs/instagram-svgrepo-com.svg',
                height: 30,
              ),
              SizedBox(width: 30),
              SvgPicture.asset(
                'assets/svgs/linkedin-rounded-border-svgrepo-com.svg',
                height: 30,
              ),
              SizedBox(width: 30),
              SvgPicture.asset(
                'assets/svgs/youtube-svgrepo-com.svg',
                height: 40,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
