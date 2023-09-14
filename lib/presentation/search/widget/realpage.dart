import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const gridviewimage =
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/FQHtuf2zc8suMFE28RyvFt3FJN.jpg";

class RealPage extends StatelessWidget {
  const RealPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Movies & TV",
          style:
              GoogleFonts.montserrat(fontSize: 23, fontWeight: FontWeight.w700),
        ),
        Expanded(
          child: GridView.count(
            mainAxisSpacing: 4,
            crossAxisSpacing: 5,
            childAspectRatio: 1 / 2,
            crossAxisCount: 3,
            shrinkWrap: true,
            children: List.generate(
                20,
                (index) => Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(gridviewimage),
                              fit: BoxFit.fill)),
                    )),
          ),
        )
      ],
    );
  }
}
