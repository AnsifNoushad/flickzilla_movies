import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix_app/models/newmodels.dart';

final dramaprovider = Provider<List<Newmodels>>((ref) => [
      Newmodels(
          images: "assets/drama/51F-lOi11dL._AC_UF894,1000_QL80_.jpg",
          name: "Titanic",
          description: "Romantic/Animation/Triller/Drama",
          rating: 4.9),
      Newmodels(
        images: "assets/drama/download.jpeg",
        name: "Idyll",
        description: "Triller/Adventure/Drama",
        rating: 3.5,
      ),
      Newmodels(
        images:
            "assets/drama/drama-movie-poster-template-design-aca536dd594f745b32bee67980c8690d_screen.jpg",
        name: "The Dark Society",
        description: "Triller/Action/drama",
        rating: 4.2,
      ),
      Newmodels(
        images:
            "assets/drama/dramatic-movie-poster-template-design-5d75e35ef878f74977c88e3ff26b0c70_screen.jpg",
        name: "Story Castlerock",
        description: "Drama/Triller/Adventure",
        rating: 3.9,
      ),
      Newmodels(
        images: "assets/drama/1131w-Aj9bV_GaoAI.webp",
        name: "Bad Leader",
        description: "Action/Drama/Triller",
        rating: 4.7,
      ),
    ]);
