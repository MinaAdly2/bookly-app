import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: width * 0.2,
                  end: width * 0.2,
                  top: 30,
                ),
                child: const CustomBookImage(),
              ),
              const SizedBox(height: 40),
              const Text(
                'The Jungle Book',
                style: AppStyles.textSyle30,
                textAlign: TextAlign.center,
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
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 14),
              const BookRating(mainAxisAlignment: MainAxisAlignment.center),
              const SizedBox(height: 37),
              const BookActions(),
              const Expanded(child: SizedBox(height: 50)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'You can also like',
                    style: AppStyles.textSyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const SimilarBooksListView(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
