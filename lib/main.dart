import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/application/fastlaugh/fast_laugh_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/domain/core/injectable.dart';
import 'package:netflix/presentation/mainpage/mainpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configuedependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
          BlocProvider(create: (ctx) => getIt<SearchBloc>()),
          BlocProvider(create: (ctx) => getIt<FastLaughBloc>())
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white),
                bodySmall: TextStyle(color: Colors.white)),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MainPage(),
        ));
  }
}
