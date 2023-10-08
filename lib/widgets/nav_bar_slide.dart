import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_doorlock/config/colors.dart';
import 'package:smart_doorlock/widgets/home_page.dart';
import 'package:smart_doorlock/widgets/menu/halaman_about.dart';
import 'package:smart_doorlock/widgets/menu/halaman_daftar_wajah/halaman_daftar_wajah.dart';

class NavBarSlide extends StatelessWidget {
  const NavBarSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: GloblaColors.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SvgPicture.asset(
                  'assets/svgs/menu-navigation-grid-1528-svgrepo-com 1.svg',
                  height: 30,
                  width: 30,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Menu',
                style: GoogleFonts.poppins(
                  color: GloblaColors.textColors,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          ListContent(
            icon: 'assets/svgs/home-svgrepo-com.svg',
            onRout: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => MyHomePage(),
                ),
              );
            },
            text: 'Halaman Utama',
          ),
          SizedBox(height: 20),
          ListContent(
            icon: 'assets/svgs/user-check-svgrepo-com.svg',
            onRout: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HalamanDaftarWajah(),
                ),
              );
            },
            text: 'Data Wajah Terdaftar',
          ),
          SizedBox(height: 20),
          ListContent(
            icon: 'assets/svgs/about-filled-svgrepo-com.svg',
            onRout: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HalamanAbout(),
                ),
              );
            },
            text: 'Tentang Aplikasi',
          ),
        ],
      ),
    );
  }
}

class ListContent extends StatelessWidget {
  const ListContent(
      {super.key,
      required this.text,
      required this.onRout,
      required this.icon});
  final String text;
  final VoidCallback onRout;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onRout,
          leading: SvgPicture.asset(
            icon,
            height: 20,
            width: 20,
          ),
          title: Text(
            text,
            style: GoogleFonts.poppins(
              color: GloblaColors.textColors,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
