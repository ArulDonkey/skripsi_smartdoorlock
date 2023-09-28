import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_doorlock/config/colors.dart';

class NavBarSlide extends StatelessWidget {
  const NavBarSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: GloblaColors.backgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://diskominfo.kuburayakab.go.id/media_library/posts/large/8a117a815091f0355e3ab47a3cea4f25.jpg'),
              ),
            ),
            child: Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Text(
                  'Menu',
                  style: GoogleFonts.poppins(
                    color: GloblaColors.backgroundColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.home,
            ),
            title: Text(
              'Halaman Utama',
              style: GoogleFonts.poppins(
                color: GloblaColors.textColors,
                fontSize: 13,
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.person,
            ),
            title: Text(
              'Data Wajah Terdaftar',
              style: GoogleFonts.poppins(
                color: GloblaColors.textColors,
                fontSize: 13,
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.person_off,
            ),
            title: Text(
              'Data Wajah Tidak Terdaftar',
              style: GoogleFonts.poppins(
                color: GloblaColors.textColors,
                fontSize: 13,
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.adb_outlined,
            ),
            title: Text(
              'About',
              style: GoogleFonts.poppins(
                color: GloblaColors.textColors,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
