import 'package:bookly/Features/home/presentation/views/widgets/dummy_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomLoadingSliverWidget extends StatelessWidget {
  const CustomLoadingSliverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 6,
        (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Skeletonizer(child: DummyBooksListView()),
          );
        },
      ),
    );
  }
}

