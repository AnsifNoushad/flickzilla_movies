import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix_app/models/newmodels.dart';

final trendingprovider = Provider<List<Newmodels>>((ref) => [
      Newmodels(
        images: "assets/trending/MV5BZWFhZjBjY2ItMmZmMC00N2RjLTg2ZjktNDUwNmYwNmVjMDA5XkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_FMjpg_UX1000_.jpg",
        name: "2018",
        description: "Triller/Adventure/Action",
        rating: 4.5
      ),
      Newmodels(
        images: "assets/trending/JokerPoster1200_5ca3c435318d42.29270548.webp",
        name: "Joker",
        description: "Action/Animation/Triller",
        rating: 3.5,
      ),
      Newmodels(
        images: "assets/trending/MV5BYzc5ZDE0Y2QtNWZiMS00NDMyLWEyMzQtMzJjODAyMzEwMjU2XkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg",
        name: "Neymar",
        description: "Triller/Action/Comedy",
        rating: 4.8,
      ),
      Newmodels(
        images: "assets/trending/a-tale-of-two-sisters-sm-web.jpg",
        name: "A Tale Of Two Sisters",
        description: "Action/Triller/Drama",
        rating: 3.9,
      ),
      Newmodels(
        images: "assets/trending/download.jpeg",
        name: "The Boat",
        description: "Action/Triller/Adventure",
        rating: 4.7,
      ),
    ]);
