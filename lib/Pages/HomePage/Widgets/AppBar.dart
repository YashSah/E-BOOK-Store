import 'package:e_book/Pages/ProfilePage/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../Config/Colors.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    String firstLetter = '';
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user = auth.currentUser;

    if(user!= null) {
      String email = user.email!;
      firstLetter = email.substring(0, 1);
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("Assets/Icons/dashboard.svg"),
        Text(
          "E-Book",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Theme.of(context).colorScheme.background,),
    ),
        Tooltip(
          message: "Profile",
          child: InkWell(
            onTap: () {
              Get.to(ProfilePage());
            },
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.background,
              child: Text(
                firstLetter.toUpperCase(),
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
