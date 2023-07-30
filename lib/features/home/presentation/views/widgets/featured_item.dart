import 'package:bookly/core/utils/app_asset_paths.dart';
import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 15),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(AppAssetPaths.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
