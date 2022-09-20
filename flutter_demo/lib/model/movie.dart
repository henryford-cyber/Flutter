import 'dart:core';

class Movie {
  final String id;
  final String name;
  final String images;
  final String description;

  Movie(this.id, this.name, this.images, this.description);
  static List<Movie> ListMovie() {
    List<Movie> rs = <Movie>[];
    rs.add(
      Movie("1", "Black Widow", "blackWidow.jpg", "Action and Advature"),
    );
    rs.add(
      Movie("2", "Dolittle", "dolittle.jpg", "Family and Advature"),
    );
    return rs;
  }
}
