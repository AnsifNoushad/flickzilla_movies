import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix_app/models/newmodels.dart';

final animateprovider = Provider<List<Newmodels>>((ref) => [
      Newmodels(
          images: "assets/animateimage/poster.jpg",
          name: "Jawan",
          description: "/Animation/Triller/Drama",
          rating: 4.9),
      Newmodels(
        images:
            "assets/animateimage/The-Flash-Movie-Poster-International-01.webp",
        name: "The Flash",
        description: "Triller/Adventure/Drama",
        rating: 3.5,
      ),
      Newmodels(
        images: "assets/animateimage/fateh-poster-2.jpg",
        name: "Fetch",
        description: "Triller/Action/drama",
        rating: 4.2,
      ),
      Newmodels(
        images: "assets/animateimage/wp11851047.jpg",
        name: "Adipurush",
        description: "Drama/Triller/Adventure",
        rating: 3.9,
      ),
      Newmodels(
        images:
            "assets/animateimage/MV5BZGY3ZWJlZjYtMDEzNy00YmU4LWI4M2MtNzcwODcwYjlkNzdiXkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg",
        name: "Bandra",
        description: "Action/Drama/Triller",
        rating: 4.9,
      ),
    ]);
