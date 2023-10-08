import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_doorlock/config/colors.dart';
import 'package:smart_doorlock/widgets/menu/halaman_daftar_wajah/component/laman.dart';
import 'package:smart_doorlock/widgets/nav_bar_slide.dart';

class HalamanDaftarWajah extends StatelessWidget {
  const HalamanDaftarWajah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBarSlide(),
      backgroundColor: GloblaColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: GloblaColors.buttonColors,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Halaman Wajah Terdaftar",
              style: GoogleFonts.poppins(
                color: GloblaColors.textColors,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Hero(
          //   tag: "Daftar Wajah",
          //   child: Material(
          //     child: Padding(
          //       padding: const EdgeInsets.all(20.0),
          //       child: ListTile(
          //         style: ListTileStyle.list,
          //         title: Text("Nama User yang terdaftar di database"),
          //         tileColor: GloblaColors.backgroundVidio,
          //         onTap: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (BuildContext context) =>
          //                     LamanDaftarWajah()),
          //           );
          //         },
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => LamanDaftarWajah()),
                );
              },
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: GloblaColors.backgroundVidio,
                ),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.list),
                    SizedBox(width: 10),
                    Text(
                      "Nama User yang terdaftar di database",
                      style: GoogleFonts.poppins(
                        color: GloblaColors.textColors,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
