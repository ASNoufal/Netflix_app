import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/constant/constant.dart';
import 'package:netflix/presentation/mainpage/widgets/Maintitletest.dart';

// const gridviewimage =
//     "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/FQHtuf2zc8suMFE28RyvFt3FJN.jpg";

class RealPage extends StatelessWidget {
  const RealPage({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance!.addPostFrameCallback(_){
    //   context.read<Searchbloc>()
    // } ,
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const maintexttitle(test: "Movies & TV"),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                mainAxisSpacing: 4,
                crossAxisSpacing: 5,
                childAspectRatio: 1 / 2,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: List.generate(
                    state.searchModel.length,
                    (index) => Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "$imageurl${state.searchModel[index].posterpath}"),
                                  fit: BoxFit.fill)),
                        )),
              );
            },
          ),
        )
      ],
    );
  }
}
