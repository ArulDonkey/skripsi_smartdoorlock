import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_doorlock/component/button_action.dart';
import 'package:smart_doorlock/config/colors.dart';
import 'package:smart_doorlock/widgets/nav_bar_slide.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBarSlide(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Smart DoorLock",
              style: GoogleFonts.poppins(
                color: GloblaColors.textColors,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: GloblaColors.buttonColors,
      ),
      backgroundColor: GloblaColors.backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 50),
            child: Row(
              children: [
                Text(
                  'My Home Page',
                  style: GoogleFonts.poppins(
                    color: GloblaColors.textColors,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          //Streming vidio, ngambil vidionya di server api esp 32-cam
          // Pake modul OrientationBuilder nanti logicnya gimana caranya ngambil api sama ngeconnectkin url nya
          // Sementara pake container dulu aja.
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Container(
              height: 220,
              width: 380,
              color: GloblaColors.backgroundVidio,
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Column(
              children: [
                Text(
                  'Selenoid Action',
                  style: GoogleFonts.poppins(
                    color: GloblaColors.textColors,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonAction(
                      action: () {},
                      name: "Lock",
                      color: GloblaColors.buttonLock,
                    ),
                    const SizedBox(width: 10),
                    ButtonAction(
                      action: () {},
                      name: "Open",
                      color: GloblaColors.buttonOpen,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Text(
                  'Flash ESP 32 - Cam',
                  style: GoogleFonts.poppins(
                    color: GloblaColors.textColors,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonAction(
                      action: () {},
                      name: "OFF",
                      color: GloblaColors.buttonLock,
                    ),
                    const SizedBox(width: 10),
                    ButtonAction(
                      action: () {},
                      name: "ON",
                      color: GloblaColors.buttonOpen,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
