import 'package:drops/drops.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
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
      ),
    );
  }
}
