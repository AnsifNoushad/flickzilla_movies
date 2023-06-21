import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix_app/detailpage/dtailpage_function.dart';
import 'package:netflix_app/provider/dramaprovider.dart';
import 'package:netflix_app/provider/firstanimateprovider.dart';
import 'package:netflix_app/provider/popularprovider.dart';
import 'package:netflix_app/provider/seriesprovider.dart';
import 'package:netflix_app/provider/trendingprovider.dart';
import 'package:netflix_app/seeall/trending_seeall.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          margin: EdgeInsets.only(
            left: 20,
            bottom: 10,
            top: 10,
          ),
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
            'Flickzilla Movies',
            style: TextStyle(
                color: Color.fromARGB(118, 181, 172, 172),
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontFamily: "Mukta"),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 20,
            ),
            height: 37,
            width: 37,
            decoration: const BoxDecoration(
                color: Color.fromARGB(128, 203, 190, 190),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: const Icon(
              Icons.search,
              size: 20,
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
                        InkWell(
                          onTap: () =>
                              detailfunction(context, animateprovider, index),
                          child: Container(
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
                        ),
                        Text(
                          ref.watch(animateprovider)[index].name,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 185, 3, 3),
                            fontFamily: "Mukta",
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          ref.watch(animateprovider)[index].rating.toString(),
                          style: TextStyle(
                              color: const Color.fromARGB(255, 195, 8, 8),
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
                      onTap: () => moviesgrid(context, 0),
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
                  return InkWell(
                    onTap: () =>
                        detailfunction(context, trendingprovider, index),
                    child: Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                              ref.watch(trendingprovider)[index].images),
                        ),
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
                child: Row(
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
                    InkWell(
                      onTap: () => moviesgrid(context, 1),
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
                itemCount: ref.watch(popularprovider).length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () =>
                        detailfunction(context, popularprovider, index),
                    child: Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                              ref.watch(popularprovider)[index].images),
                        ),
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
                child: Row(
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
                    InkWell(
                      onTap: () => moviesgrid(context, 2),
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
                itemCount: ref.watch(seriesprovider).length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => detailfunction(context, seriesprovider, index),
                    child: Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                              ref.watch(seriesprovider)[index].images),
                        ),
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
                child: Row(
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
                    InkWell(
                      onTap: () => moviesgrid(context, 3),
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
                itemCount: ref.watch(dramaprovider).length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => detailfunction(context, dramaprovider, index),
                    child: Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                              ref.watch(dramaprovider)[index].images),
                        ),
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

  void moviesgrid(BuildContext context, int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Trending(
            ind: index,
          ),
        ));
  }
}
