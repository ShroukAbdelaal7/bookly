import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
      child: Row(
        children: [
          Image.asset(
            AssetsD.logo,
            height: 20,
          ),
          Spacer(),
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
