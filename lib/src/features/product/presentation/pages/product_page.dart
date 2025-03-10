import 'package:drops/drops.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kasirtoko/flavors.dart';
import 'package:kasirtoko/src/core/core.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 8,
          children: [
            Image.asset('assets/user-logo.png', height: 40),
            Text(
              'Selamat Datang di Kasko',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: COSColors.primary),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(F.appFlavor.toString()),
          FilledButton(
            onPressed: () {
              Drops.show(
                context,
                title: 'Your Title',
                subtitle: 'Your new Message',
                titleTextStyle: GoogleFonts.poppins(fontSize: 16),
                subtitleTextStyle: GoogleFonts.poppins(fontSize: 12),
                textStyle: GoogleFonts.poppins(fontSize: 16),
              );
            },
            child: Text('Show Drops'),
          ),
        ],
      ),
    );
  }
}
