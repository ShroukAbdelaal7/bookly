import 'package:bookly/features/home/presentation/views/widgets/app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/homeviewbody.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: const HomeViewBody(),
    );
  }
}
