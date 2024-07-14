import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_july_3_netflix_clone/dummy_db.dart';
import 'package:flutter_july_3_netflix_clone/utils/constants/color_constants.dart';
import 'package:flutter_july_3_netflix_clone/view/global_widgets/user_name_card.dart';

class Morescreen extends StatefulWidget {
  const Morescreen({super.key});

  @override
  State<Morescreen> createState() => _MorescreenState();
}

class _MorescreenState extends State<Morescreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainblack,
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          DummyDb.userList.length,
                          (index) => UserNameCard(
                                onCardPressed: () {
                                  selectedIndex = index;

                                  setState(() {});
                                },
                                height: index == selectedIndex ? 70 : 60,
                                width: index == selectedIndex ? 73 : 65,
                                imagePath: DummyDb.userList[index]["imagePath"]
                                    .toString(),
                                userName:
                                    DummyDb.userList[index]["name"].toString(),
                              ))),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    height: 60,
                    width: 63,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: ColorConstants.mainwhite)),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: ColorConstants.mainwhite,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
