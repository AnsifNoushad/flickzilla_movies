import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix_app/detailpage/detailpage.dart';
import 'package:netflix_app/models/newmodels.dart';

void detailfunction(
    BuildContext context, Provider<List<Newmodels>> pro, int index) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MovieDetailPage(
          provider: pro,
          index: index,
        ),
      ));
}
