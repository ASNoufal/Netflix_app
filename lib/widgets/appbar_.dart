import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key, this.title = ''});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
