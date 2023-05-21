import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStars extends StatelessWidget {
  final double rating;

  const RatingStars({super.key, required this.rating});

  @override
 Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating,
      minRating: 0,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 20,
      ignoreGestures: true,
      unratedColor: Colors.grey,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Color.fromARGB(255, 14, 14, 13),
      ), onRatingUpdate: (double value) {  },
    );
  }
}