import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix_app/models/newmodels.dart';

class MovieDetailPage extends ConsumerWidget {
  const MovieDetailPage({
    super.key,
    required this.provider,
    required this.index,
  });
  final int index;

  final Provider<List<Newmodels>> provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var item = ref.watch(provider)[index];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Details',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Mukta",
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 360,
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                  image: AssetImage(item.images),
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // height: 30,
                      // width: 80,
                      // decoration: BoxDecoration(
                      //   color: Color.fromARGB(255, 198, 22, 9),
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      child: Center(
                        child: Text(
                          item.name,
                          style: TextStyle(
                            color: Color.fromARGB(255, 198, 22, 9),
                            fontFamily: "Mukta",
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 198, 22, 9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 251, 243, 7),
                            size: 20,
                          ),
                          Text(
                            item.rating.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Mukta",
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 75,
                  ),
                  height: 35,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 203, 7, 7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      item.description,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Mukta",
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
