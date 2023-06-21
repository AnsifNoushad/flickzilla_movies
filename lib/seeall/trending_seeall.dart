import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix_app/models/newmodels.dart';
import 'package:netflix_app/provider/dramaprovider.dart';
import 'package:netflix_app/provider/popularprovider.dart';
import 'package:netflix_app/provider/seriesprovider.dart';
import 'package:netflix_app/provider/trendingprovider.dart';

class Trending extends ConsumerWidget {
  const Trending({
    super.key,
    required this.ind,
  });
  final int ind;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Provider<List<Newmodels>>> pro = [
      trendingprovider,
      popularprovider,
      seriesprovider,
      dramaprovider,
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          ind == 0
              ? "Trending"
              : ind == 1
                  ? "Popular"
                  : ind == 2
                      ? "Series"
                      : "Drama",
          style: TextStyle(fontFamily: "Mukta"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: ref.watch(pro[ind]).length,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 8,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 8,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(ref.watch(pro[ind])[index].images),
                          fit: BoxFit.cover)),
                ),
              );
            }),
      ),
    );
  }
}
