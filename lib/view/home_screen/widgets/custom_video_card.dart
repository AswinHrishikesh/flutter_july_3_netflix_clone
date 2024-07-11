import 'package:flutter/material.dart';
import 'package:flutter_july_3_netflix_clone/dummy_db.dart';
import 'package:flutter_july_3_netflix_clone/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          height: 195,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(Icons.notifications_sharp,
                          size: 24, color: ColorConstants.mainwhite),
                      SizedBox(height: 7),
                      Text(
                        "Remin Me",
                        style: TextStyle(
                          color: ColorConstants.mainwhite.withOpacity(.83),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 45),
                  Column(
                    children: [
                      Icon(Icons.share,
                          color: ColorConstants.mainwhite, size: 24),
                      SizedBox(height: 7),
                      Text(
                        "Share",
                        style: TextStyle(
                            color: ColorConstants.mainwhite.withOpacity(.83)),
                      )
                    ],
                  )
                ],
              ),
              Text(
                "Season 1 Coming December 14",
                style: TextStyle(
                    color: ColorConstants.mainwhite.withOpacity(.83),
                    fontSize: 11),
              ),
              SizedBox(height: 12),
              Text(
                "Castle & Castle",
                style: TextStyle(
                    color: ColorConstants.mainwhite,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: ColorConstants.mainwhite.withOpacity(.83),
                    fontSize: 11),
              ),
              SizedBox(height: 12),
              Text(
                "Steamy • Soapy • Slow • Burn • Suspenseful • Teen • Mystery",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: ColorConstants.mainwhite,
                    fontSize: 11),
              ),
              SizedBox(height: 12),
            ],
          ),
        )
      ],
    );
  }
}
