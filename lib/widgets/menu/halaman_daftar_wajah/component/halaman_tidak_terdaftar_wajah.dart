import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_doorlock/config/colors.dart';

class HalamanWajahTidakTerdaftar extends StatelessWidget {
  const HalamanWajahTidakTerdaftar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GloblaColors.buttonColors,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Smart DoorLock',
              style: GoogleFonts.poppins(
                color: GloblaColors.textColors,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Center(
            child: Text(
              'Daftar wajah yang tidak terdaftar',
              style: GoogleFonts.poppins(
                color: GloblaColors.textColors,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            width: 331,
            height: 137,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: GloblaColors.backgroundVidio,
                  blurRadius: 2,
                  spreadRadius: 1,
                  offset: Offset(1, 4),
                  blurStyle: BlurStyle.solid,
                ),
              ],
              color: GloblaColors.backgroundColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: ListTile(
                leading: Container(
                  color: GloblaColors.backgroundVidio,
                  width: 125.0,
                  height: 104.0,
                  child: Hero(
                    tag: '_hero-rectangle',
                    child: Center(child: Text('building function')),
                  ),
                ),
                // Hero(
                //   tag: 'hero-rectangle',
                //   child: Container(
                //     width: 120.0,
                //     height: 300.0,
                //     color: GloblaColors.backgroundVidio,
                //   ),
                // ),
                title: const Text('Nama user'),
                subtitle: const Text('Nilai User'),
                tileColor: GloblaColors.backgroundVidio,
                onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(
                  builder: (BuildContext context) => Scaffold(
                    appBar: AppBar(
                      backgroundColor: GloblaColors.buttonColors,
                      title: const Text('Second Page'),
                    ),
                    body: const Center(
                      child: Text("Building Widget"),
                    ),
                  ),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
