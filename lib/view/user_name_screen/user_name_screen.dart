import 'package:flutter/material.dart';
import 'package:flutter_july_3_netflix_clone/dummy_db.dart';
import 'package:flutter_july_3_netflix_clone/utils/constants/color_constants.dart';
import 'package:flutter_july_3_netflix_clone/utils/constants/image_constants.dart';
import 'package:flutter_july_3_netflix_clone/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:flutter_july_3_netflix_clone/view/global_widgets/user_name_card.dart';
import 'package:flutter_july_3_netflix_clone/view/home_screen/home_screen.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({super.key});

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainblack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainblack,
        centerTitle: true,
        title: Image.asset(
          height: 37.2,
          ImageConstants.logo_png,
        ),
        actions: [
          Icon(
            Icons.edit,
            color: ColorConstants.mainwhite,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 75),
          shrinkWrap: true,
          itemCount: DummyDb.userList.length + 1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisExtent: 130),
          itemBuilder: (context, index) {
            if (index < DummyDb.userList.length) {
              return UserNameCard(
                imagePath: DummyDb.userList[index]["imagePath"].toString(),
                userName: DummyDb.userList[index]["name"].toString(),
                onCardPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavScreen(),
                      ));
                },
              );
            } else {
              return InkWell(
                onTap: () {
                  DummyDb.userList.add(
                    {"imagePath": ImageConstants.user1__png, "name": "unknown"},
                  );
                  setState(() {});
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: ColorConstants.green,
                      content: Text("Profile adde successfully")));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      ImageConstants.ADD_png,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Add Profile",
                      style: TextStyle(
                        color: ColorConstants.mainwhite,
                        fontSize: 13.25,
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
