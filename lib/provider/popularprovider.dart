import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflix_app/models/newmodels.dart';

final popularprovider = Provider<List<Newmodels>>((ref) => [
      Newmodels(
        images: "assets/image/matrix.jpg",
        name: "Matrix",
        description: "Action/Animation/Triller",
        rating: 3.5
      ),
      Newmodels(
        images: "assets/image/shawshank.jpg",
        name: "Shawshank",
        description: "Triller/Adventure/Drama",
        rating: 4.5,
      ),
      Newmodels(
        images: "assets/image/us.jpg",
        name: "Us",
        description: "Triller/Action/Adventure",
        rating: 4.2,
      ),
      Newmodels(
        images: "assets/image/starwars.jpg",
        name: "Star Wars",
        description: "Action/Triller/Adventure",
        rating: 3.9,
      ),
      Newmodels(
        images: "assets/image/Homealone.jpg",
        name: "Home Alone",
        description: "Comedy/Drama",
        rating: 4.7,
      ),
    ]);