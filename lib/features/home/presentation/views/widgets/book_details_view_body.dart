import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Column(
        children: [
          CustomAppBarBookDetails(),
        ],
      ),
    );
  }
}
