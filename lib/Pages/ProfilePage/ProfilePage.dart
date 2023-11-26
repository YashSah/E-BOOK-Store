import 'package:e_book/Components/BookTile.dart';
import 'package:e_book/Components/MyBackButton.dart';
import 'package:e_book/Controller/AuthController.dart';
import 'package:e_book/Controller/BookController.dart';
import 'package:e_book/Models/Data.dart';
import 'package:e_book/Pages/AddNewBook/AddNewBook.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import '../../Components/PrimaryButton.dart';
import '../../Config/Colors.dart';
import '../HomePage/HomePage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    BookController bookController = Get.put(BookController());

    return Scaffold(
      floatingActionButton: Tooltip(
        message: "Add a Book",
        child: FloatingActionButton(
          onPressed: () {
            Get.to(AddNewBook());
          },
          child: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.background,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                      Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyBackButton(),
                        Text(
                          "Profile",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Theme.of(context).colorScheme.background,),
                        ),
                        Tooltip(
                          message: "Sign Out",
                          child: IconButton(
                            onPressed: () {
                              authController.signOut();
                            },
                            icon: Icon(
                              Icons.logout,
                              color: Theme.of(context).colorScheme.background,
                            ),
                          ),
                        ),
                      ],
                    ),
                        SizedBox(height: 60,),
                       Container(
                         padding: EdgeInsets.all(5),
                         decoration: BoxDecoration(
                           border: Border.all(
                             width: 2,
                             color: Theme.of(context).colorScheme.background,
                           ),
                           borderRadius: BorderRadius.circular(100),
                         ),
                         child: Container(
                           width: 120,
                           height: 120,
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(100),
                             child: Image.network(
                               "${authController.auth.currentUser!.photoURL}",
                               fit: BoxFit.cover,
                             ),
                           ),
                         ),
                       ),
                        SizedBox(height: 20,),
                        Text(
                          "${authController.auth.currentUser!.displayName}",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Theme.of(context).colorScheme.background,
                          ),
                        ),
                        Text(
                          "${authController.auth. currentUser!.email}",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Your Books",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Obx(() => Column(
                    children: bookController.bookData.map((e) => BookTile(
                      title: e.title!,
                      coverUrl: e.coverUrl!,
                      author: e.author!,
                      price: e.price!,
                      rating: e.rating!,
                      totalRating: 12,
                      ontap: () {},
                    )).toList(),
                  ))
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
