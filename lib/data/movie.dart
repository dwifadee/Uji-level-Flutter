class MovieModel {
  String? imageAsset;
  String? movieName;
  String? movieRating;
  String? year;
  final List<Map>? cast;
  final List<Map>? comments;
  MovieModel(
      {this.imageAsset,
      this.movieName,
      this.movieRating,
      this.year,
      this.comments,
      this.cast});
}

// data
final forYouImages = [
  MovieModel(imageAsset: "assets/for_your_image_1.jpeg"),
  MovieModel(imageAsset: "assets/for_your_image_2.jpeg"),
  MovieModel(imageAsset: "assets/for_your_image_3.jpeg"),
  MovieModel(imageAsset: "assets/for_your_image_4.jpeg"),
];

final popularImages = [
  MovieModel(
      imageAsset: "assets/popular_image_1.jpeg",
      movieName: "Honkai: Star Rail",
      cast: [
        {
          "name": "Timothee Chalamet",
          "role": "Paul Atreides",
          "image": "assets/actor_1.jpeg",
        },
        {
          "name": "Zendaya",
          "role": "Chani",
          "image": "assets/actor_2.jpeg",
        },
        {
          "name": "Rebecca Ferguson",
          "role": "Lady Jessica",
          "image": "assets/actor_3.jpeg",
        },
        {
          "name": "Oscar Isaac",
          "role": "Duke Leto",
          "image": "assets/actor_4.jpeg",
        },
        {
          "name": "Jaon Momoa",
          "role": "Duncan Idaho",
          "image": "assets/actor_5.jpeg",
        },
      ],
      comments: [
        {
          "name": "Cody Fisher",
          "imageUrl": "assets/actor_1.png",
          "date": "June 14, 2022",
          "rating": "5.0",
          "comment":
              "Great movie! I will review ite more than once. Special thanks to one the operator!"
        },
        {
          "name": "Theresa Webb",
          "imageUrl": "assets/actor_2.png",
          "date": "Aug 2, 2021",
          "rating": "4.0",
          "comment": "Not a bad movie, but not much impressed"
        },
        {
          "name": "Caitriona Balfe",
          "imageUrl": "assets/actor_3.png",
          "date": "June 26, 2020",
          "rating": "4.8",
          "comment": "Love the way it is designed."
        },
      ],
      year: "2023",
      movieRating: "9.6"),
  MovieModel(
      imageAsset: "assets/popular_image_2.jpeg",
      movieName: "Valorant",
      year: "2020",
      movieRating: "8.4"),
  MovieModel(
      imageAsset: "assets/popular_image_3.jpeg",
      movieName: "Roblox",
      year: "2006",
      movieRating: "8,6"),
  MovieModel(
      imageAsset: "assets/for_your_image_2.jpeg",
      movieName: "Free Fire",
      year: "2019",
      movieRating: "9.1"),
  MovieModel(
      imageAsset: "assets/for_your_image_3.jpeg",
      movieName: "PUBG",
      year: "2017",
      movieRating: "8.8"),
];
final legendaryImages = [
  MovieModel(
      imageAsset: "assets/legendary_movie_1.jpeg",
      movieName: "Lost Saga",
      year: "2009",
      movieRating: "9.4"),
  MovieModel(
      imageAsset: "assets/legendary_movie_2.jpeg",
      movieName: "Point Blank",
      year: "2008",
      movieRating: "9.2"),
  MovieModel(
      imageAsset: "assets/popular_image_3.jpeg",
      movieName: "Roblox",
      year: "2006",
      movieRating: "8,6"),
  MovieModel(
      imageAsset: "assets/for_your_image_2.jpeg",
      movieName: "Free Fire",
      year: "2019",
      movieRating: "9.1"),
  MovieModel(
      imageAsset: "assets/for_your_image_1.jpeg",
      movieName: "Mobile Legends",
      year: "2016",
      movieRating: "9.1"),
];

final genresList = [
  MovieModel(movieName: "Moba", imageAsset: "assets/genres_1.png"),
  MovieModel(movieName: "Shooter", imageAsset: "assets/genres_2.jpeg"),
  MovieModel(movieName: "MMORPG", imageAsset: "assets/genres_3.jpeg"),
  MovieModel(movieName: "3D Casual Fighting", imageAsset: "assets/genres_4.jpeg"),
  MovieModel(movieName: "Music Video Game", imageAsset: "assets/genres_5.jpeg"),
];
