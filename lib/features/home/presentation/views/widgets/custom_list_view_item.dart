import 'package:bookly/core/utils/app_asset_paths.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
    );
  }
}
