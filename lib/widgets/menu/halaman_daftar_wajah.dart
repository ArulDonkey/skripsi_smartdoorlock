import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_doorlock/config/colors.dart';
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
          Hero(
            tag: "Daftar Wajah",
            child: Material(
              child: ListTile(
                title: Text("Nama User yang terdaftar di database"),
                tileColor: GloblaColors.backgroundVidio,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<Widget>(builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                          backgroundColor: GloblaColors.buttonColors,
                          title: const Text('ListTile Hero'),
                        ),
                        body: Center(
                          child: Hero(
                            tag: 'ListTile-Hero',
                            child: Material(
                              child: ListTile(
                                title: const Text('ListTile with Hero'),
                                subtitle: const Text('Tap here to go back'),
                                tileColor: GloblaColors.backgroundVidio,
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
