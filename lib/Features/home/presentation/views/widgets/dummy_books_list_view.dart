import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DummyBooksListView extends StatelessWidget {
  const DummyBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          const CustomBookItem(
              urlImage:
                  'http://books.google.com/books/content?id=jKBQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api'),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'asdasdasasdasdasdasdasdd',
                    style: Styles.textStyle20.copyWith(),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'asdasdasd',
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const BookRating(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
