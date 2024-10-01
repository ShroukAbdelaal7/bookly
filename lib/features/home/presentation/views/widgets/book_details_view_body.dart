import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Column(
        children: [
          const CustomAppBarBookDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .19),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(height: 3),
          Text(
            'Harry Potter',
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.white54,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 10,
          ),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 20,
          ),
          BooksAction(),
          const SizedBox(
            height: 25,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You may also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SimilarBookListView(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
