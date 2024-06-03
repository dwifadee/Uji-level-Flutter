import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movieui_design_starter/data/movie.dart';
import 'package:movieui_design_starter/read_more_text.dart';
import 'package:movieui_design_starter/utils/colors.dart';
import 'package:movieui_design_starter/widgets/cast_and_crew.dart';
import 'package:movieui_design_starter/screens/favorite_screen.dart';
import 'package:movieui_design_starter/screens/home_screen.dart'; // Import HomeScreen

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<MovieModel> popularItems = List.of(popularImages);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // The background image
                Container(
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                      colors: [
                        kBackgroundColor.withOpacity(0.8),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        popularItems[0].imageAsset.toString(),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Basic information
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Honkai: Star Rail",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "2021, miHoYo",
                                style: TextStyle(
                                  color: Colors.white38,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          // Ratings
                          Row(
                            children: [
                              Text(
                                "9.6",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.solidStar,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                      // Category builder
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildTag("Role Playing"),
                          const SizedBox(
                            width: 10,
                          ),
                          buildTag("Turn Based"),
                          const SizedBox(
                            width: 10,
                          ),
                          buildTag("3D"),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: ReadMoreText(
                          text:
                              "Honkai: Star Rail, adalah permainan video bermain peran yang dikembangkan oleh miHoYo. Permainan ini diterbitkan oleh miHoYo di Tiongkok dan HoYoverse di seluruh dunia. Permainan ini dirilis pada 26 April 2023 untuk Windows dan perangkat seluler. Perilisan untuk PlayStation 5 diumumkan pada Summer Game Fest 2023 dan direncanakan akan dirilis pada kuartal keempat 2023, sementara perilisan untuk PlayStation 4 belum diumumkan.[2] Honkai: Star Rail merupakan permainan keempat dalam seri Honkai yang menggunakan karakter dari Honkai Impact 3rd dan elemen alur permainan dari Genshin Impact.",
                          trimLength: 100,
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          moreStyle: TextStyle(color: kButtonColor),
                          lessStyle: TextStyle(color: kButtonColor),
                          style: TextStyle(
                            color: Colors.white70,
                            height: 1.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      // cast n crew
                      CastAndCrewWidget(casts: popularItems[0].cast!),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Trailer",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          // thumnail
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                height: 180,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/trailer.jpeg",
                                    ),
                                    fit: BoxFit.cover,
                                  )
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                                ),
                                child: Icon(
                                  FontAwesomeIcons.play,
                                  color: kButtonColor.withOpacity(0.8),
                                  size: 20,
                                ),
                              )
                            ],
                          ) 
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Comments",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                                Text(
                                  "See all",
                                  style: TextStyle(
                                    color: kButtonColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                            buildCommentCard(),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.15,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Home button
          Positioned(
            top: 60,
            left: 20,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(179, 51, 44, 44),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                icon: const Icon(
                  FontAwesomeIcons.xmark,
                  color: kSearchbarColor,
                  size: 20,
                ),
              ),
            ),
          ),
          // topup button
          Positioned(
            bottom: 30,
            left: 30,
            right: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: kButtonColor,
                alignment: Alignment.center,
                height: 68,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return FavoriteScreen();
                      }),
                    );
                  },
                  child: const Text(
                    "Topup",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTag(String title) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
        color: kSearchbarColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white30,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget buildCommentCard() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 160,
      child: ListView.builder(
        itemCount: popularItems[0].comments!.length,
        itemBuilder: (context, index) {
          return Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kSearchbarColor,
            ),
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                popularItems[0]
                                .comments![index]['imageUrl']
                                .toString(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popularItems[0].comments![index]['name'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              popularItems[0].comments![index]['date'],
                              style: const TextStyle(
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          popularItems[0].comments![index]['rating'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.yellow,
                          size: 12,)
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    popularItems[0].comments![index]['comment'],
                    maxLines: 3,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                      color: Colors.white
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
