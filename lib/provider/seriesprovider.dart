import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix_app/models/newmodels.dart';

final seriesprovider = Provider<List<Newmodels>>((ref) => [
      Newmodels(
        images: "assets/series/dead-to-me.jpg",
        name: "Dead To Me",
        description: "Action/Animation/Triller",
        rating: 3.5
      ),
      Newmodels(
        images: "assets/series/1SR5ZR0KNHTRvAzFayaKbhKAFSu.jpg",
        name: "The Office",
        description: "Triller/Adventure/Drama",
        rating: 4.5,
      ),
      Newmodels(
        images: "assets/series/main-qimg-905d41479c3e02f14f944b45252b21cc-lq.jpeg",
        name: "House Of Cards",
        description: "Triller/Action/Adventure",
        rating: 4.2,
      ),
      Newmodels(
        images: "assets/series/BlackNarcissus.webp",
        name: "Black Narctssus",
        description: "Horror/Triller/Adventure",
        rating: 3.9,
      ),
      Newmodels(
        images: "assets/series/main-qimg-87b3952626997dee26ea570dfd37b482.webp",
        name: "Game Of Thrones",
        description: "Action/Drama/Triller",
        rating: 4.7,
      ),
    ]);