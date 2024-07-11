import 'package:flutter/material.dart';
import 'package:flutter_july_3_netflix_clone/utils/constants/color_constants.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      color: Colors.grey,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Image.network(
                fit: BoxFit.cover, height: 55, width: 115, imageUrl),
          ),
          SizedBox(width: 30),
          Column(
            children: [
              Text(
                "New Arrival",
                style: TextStyle(color: ColorConstants.mainwhite, fontSize: 14),
              ),
              Text(
                "El chapo",
                style: TextStyle(
                  color: ColorConstants.mainwhite.withOpacity(.83),
                  fontSize: 14,
                ),
              ),
              Text(
                "Nov 6",
                style: TextStyle(
                  color: ColorConstants.mainwhite.withOpacity(.47),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
