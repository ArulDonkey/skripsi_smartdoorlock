import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_doorlock/config/colors.dart';

class LamanDaftarWajah extends StatefulWidget {
  const LamanDaftarWajah({super.key});

  @override
  State<LamanDaftarWajah> createState() => _LamanDaftarWajahState();
}

class _LamanDaftarWajahState extends State<LamanDaftarWajah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GloblaColors.buttonColors,
        title: const Text('Daftar Wajah Terdaftar'),
      ),
      body: Material(
        child: ListTile(
          leading: Hero(
              tag: 'hero-rectangle',
              child: Container(
                width: 120.0,
                height: 300.0,
                color: GloblaColors.backgroundColor,
              )),
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
    );
  }
}
