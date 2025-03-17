import 'package:drops/drops.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kasirtoko/flavors.dart';
import 'package:kasirtoko/src/core/core.dart';
import 'package:solar_icons/solar_icons.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kasko',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: COSColors.primary),
        ),
        actions: [Icon(COSRoutes.cart.icon, size: 28), SizedBox(width: 16)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SearchBar(leading: Icon(SolarIconsOutline.roundedMagnifier), hintText: 'Cari barang'),
            Text(F.appFlavor.toString()),
            FilledButton(
              onPressed: () {
                Drops.show(
                  context,
                  title: 'Your Title',
                  subtitle: 'Your new Message',
                  titleTextStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                  subtitleTextStyle: GoogleFonts.poppins(fontSize: 12),
                  textStyle: GoogleFonts.poppins(fontSize: 16),
                );
              },
              child: Text('Show Drops'),
            ),
          ],
        ),
      ),
    );
  }
}
