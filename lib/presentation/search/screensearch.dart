import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/presentation/search/idealpage.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CupertinoTextField(
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(10)),
              style: const TextStyle(
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(12),
              prefix: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  CupertinoIcons.search,
                  color: Colors.white,
                ),
              ),
              suffix: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(CupertinoIcons.clear_circled, color: Colors.white),
              ),
            ),
          ),
          const Expanded(child: Idealpage())
        ],
      ),
    );
  }
}
