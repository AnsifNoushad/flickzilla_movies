import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix_app/provider/dramaprovider.dart';
import 'package:netflix_app/provider/firstanimateprovider.dart';
import 'package:netflix_app/provider/popularprovider.dart';
import 'package:netflix_app/provider/seriesprovider.dart';
import 'package:netflix_app/provider/trendingprovider.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          height: 20,
          width: 20,
          decoration: const BoxDecoration(
            color: Color.fromARGB(127, 196, 184, 184),
            borderRadius: BorderRadius.all(Radius.circular(40)),
            image: DecorationImage(
                image: NetworkImage(
                    'https://img.freepik.com/premium-vector/happy-smiling-young-man-avatar-3d-portrait-man-cartoon-character-people-vector-illustration_653240-187.jpg'),
                fit: BoxFit.fill),
          ),
        ),
        title: Center(
          child: Text(
            'ANSIF NOUSHAD',
            style: TextStyle(
                color: Color.fromARGB(255, 216, 6, 6),
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontFamily: "Mukta"),
          ),
        ),
        actions: [
          Container(
            height: 55,
            width: 55,
            decoration: const BoxDecoration(
                color: Color.fromARGB(128, 203, 190, 190),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: const Icon(
              Icons.search,
              size: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CarouselSlider.builder(
                itemCount: 5,
                itemBuilder: (context, index, realIndex) {
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    ref.watch(animateprovider)[index].images,
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                        Text(
                          ref.watch(animateprovider)[index].rating.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Mukta"),
                        ),
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                  enlargeFactor: 0.6,
                  disableCenter: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  height: 450,
                  autoPlay: true,
                  viewportFraction: 0.7,
                  // reverse: true,
                  enlargeCenterPage: true,
                )),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                // top: 30,
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Mukta",
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(
                          color: Color.fromARGB(205, 175, 159, 159),
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: ref.watch(trendingprovider).length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                            ref.watch(trendingprovider)[index].images),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Mukta",
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Color.fromARGB(205, 175, 159, 159),
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: ref.watch(popularprovider).length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                            ref.watch(popularprovider)[index].images),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' Series',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Mukta",
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Color.fromARGB(205, 175, 159, 159),
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: ref.watch(seriesprovider).length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image:
                            AssetImage(ref.watch(seriesprovider)[index].images),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Drama',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Mukta",
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Color.fromARGB(205, 175, 159, 159),
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: ref.watch(dramaprovider).length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image:
                            AssetImage(ref.watch(dramaprovider)[index].images),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}