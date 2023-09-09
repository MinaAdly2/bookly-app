import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: width * 0.2,
            end: width * 0.2,
            top: 30,
          ),
          child: const CustomBookImage(
            imagUrl:
                'https://w7.pngwing.com/pngs/223/934/png-transparent-cristiano-ronaldo.png',
          ),
        ),
        const SizedBox(height: 40),
        const Text(
          'The Jungle Book',
          style: AppStyles.textSyle30,
        ),
        const SizedBox(height: 4),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: AppStyles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 14),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BookActions(),
      ],
    );
  }
}
