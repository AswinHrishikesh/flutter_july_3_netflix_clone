import 'package:flutter/material.dart';
import 'package:flutter_july_3_netflix_clone/utils/constants/color_constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainblack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainblack,
        title: Text(
          "Smart downloads",
          style: TextStyle(fontSize: 15, color: ColorConstants.mainwhite),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Indroducing downloads for you",
              style: TextStyle(
                  color: ColorConstants.mainwhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
              textAlign: TextAlign.justify,
              style: TextStyle(color: ColorConstants.mainwhite, fontSize: 11),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: ColorConstants.grey,
                  borderRadius: BorderRadius.circular(100)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 41,
              width: 400,
              decoration: BoxDecoration(color: ColorConstants.blue),
              child: Center(
                child: Text(
                  "SETUP",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Container(
                height: 33,
                width: 280,
                color: ColorConstants.grey,
                child: Center(
                    child: Text(
                  "Find Somethings to Download",
                  style: TextStyle(
                      fontSize: 18,
                      color: ColorConstants.mainwhite,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
