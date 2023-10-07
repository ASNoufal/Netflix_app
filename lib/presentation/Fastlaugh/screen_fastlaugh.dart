import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/fastlaugh/fast_laugh_bloc.dart';
import 'package:netflix/presentation/Fastlaugh/vediolistitem.dart';

class Fastlaugh extends StatelessWidget {
  const Fastlaugh({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) =>
        context.read<FastLaughBloc>().add(const FastLaughEvent.Initialised()));
    return BlocBuilder<FastLaughBloc, FastLaughState>(
        builder: (context, state) {
      if (state.isloading) {
        return const Center(
          child: CircularProgressIndicator(
            strokeWidth: 6,
          ),
        );
      } else if (state.isError) {
        return const Center(
          child: Text("error datta"),
        );
      } else if (state.image.isEmpty) {
        return const Center(child: Text("dataerror"));
      }
      return PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
              state.image.length,
              (index) => VedioListItemINHERITEDWIDGET(
                    widget: VedioListItems(index: index),
                    moviedata: state.image[index],
                  )));
    });
  }
}

class FastLaughIcons extends StatelessWidget {
  const FastLaughIcons({
    super.key,
    required this.icons,
    required this.name,
  });
  final IconData icons;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          Icon(
            icons,
            color: Colors.white,
            size: 30,
          ),
          Text(
            name,
            style: GoogleFonts.montserrat(fontSize: 16),
          )
        ],
      ),
    );
  }
}
