import 'package:flutter/material.dart';
import 'package:flutter_july_3_netflix_clone/dummy_db.dart';
import 'package:flutter_july_3_netflix_clone/utils/constants/color_constants.dart';
import 'package:flutter_july_3_netflix_clone/view/coming_soon_screen/widgets/new_arrival_card.dart';
import 'package:flutter_july_3_netflix_clone/view/home_screen/widgets/custom_video_card.dart';

class CommingSoonSreen extends StatelessWidget {
  const CommingSoonSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainblack,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        leading: Center(
          child: CircleAvatar(
            backgroundColor: ColorConstants.primaryred,
            radius: 15,
            child: Icon(
              Icons.notifications_sharp,
              color: ColorConstants.mainwhite,
              size: 20,
            ),
          ),
        ),
        title: Text(
          "Notification",
          style: TextStyle(
              color: ColorConstants.mainwhite,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: List.generate(
                DummyDb.newArrivals.length,
                (index) => NewArrivalCard(
                  imageUrl: DummyDb.newArrivals[index],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: List.generate(
                DummyDb.moviePostersListd1.length,
                (index) => CustomVideoCard(
                  imageUrl: DummyDb.moviePostersListd1[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
