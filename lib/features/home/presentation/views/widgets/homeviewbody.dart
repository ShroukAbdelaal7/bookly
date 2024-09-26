import 'package:bookly/features/home/presentation/views/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomAppBar()],
    );
  }
}
