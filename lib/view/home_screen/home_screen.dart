import 'package:flutter/material.dart';
import 'package:flutter_july_3_netflix_clone/dummy_db.dart';
import 'package:flutter_july_3_netflix_clone/utils/constants/color_constants.dart';
import 'package:flutter_july_3_netflix_clone/utils/constants/image_constants.dart';
import 'package:flutter_july_3_netflix_clone/view/home_screen/widgets/movies_card_builder_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainblack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMoviePosterSection(),
            SizedBox(height: 11),
            _buildPlaySection(),
            SizedBox(height: 40),
            MoviesCardBuilderWidget(
              haveInfocard: false,
              title: "Previews",
              customWidth: 102,
              isCircle: true,
              posterImages: DummyDb.moviePostersListd1,
            ),
            MoviesCardBuilderWidget(
              haveInfocard: true,
              posterImages: DummyDb.moviePostersListd2,
              title: "Continue Watching for Emenalo",
            ),
            MoviesCardBuilderWidget(
              haveInfocard: false,
              posterImages: DummyDb.moviePostersListd1,
              title: "Popular on Netflix",
            ),
            MoviesCardBuilderWidget(
              haveInfocard: false,
              posterImages: DummyDb.moviePostersListd2,
              title: "Trending Now",
              customHeight: 251,
              customWidth: 154,
            ),
            MoviesCardBuilderWidget(
              haveInfocard: false,
              posterImages: DummyDb.moviePostersListd1,
              title: "Top 10 in Nigeria Today",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaySection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.add,
              color: ColorConstants.mainwhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "My List",
              style: TextStyle(
                color: ColorConstants.mainwhite,
                fontSize: 14,
              ),
            )
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(6)),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                size: 40,
                color: ColorConstants.mainblack,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Play",
                style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline,
              color: ColorConstants.mainwhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Info",
              style: TextStyle(
                color: ColorConstants.mainwhite,
                fontSize: 14,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildMoviePosterSection() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageConstants.home1_png))),
          height: 415,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: 415,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [ColorConstants.mainblack, Colors.transparent])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(ImageConstants.logos_n_png),
                    Text(
                      "TV shows",
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.mainwhite),
                    ),
                    Text(
                      "Movies",
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.mainwhite),
                    ),
                    Text(
                      "My List",
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.mainwhite),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageConstants.home2_png),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "#2 in Nigeria Today",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorConstants.mainwhite,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
