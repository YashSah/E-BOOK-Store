import 'package:e_book/Components/MyBackButton.dart';
import 'package:e_book/Config/Colors.dart';
import 'package:e_book/Pages/BookDetails/BookActionBtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'HeaderWidget.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              color: primaryColor,
              child: Row(
                children: [
                  Expanded(
                    child: BookDetailsHeader(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "About Book",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "An innovative, groundbreaking book that will captivate readers of Malcolm Gladwell, Daniel Pink, The Power of Habit, and Quiet For generations, we have focused on the individual drivers of success: passion, hard work, talent, and luck. But today, success is increasingly dependent on how we interact with others",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "About Author",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "An innovative, groundbreaking book that will captivate readers of Malcolm Gladwell, Daniel Pink, The Power of Habit, and Quiet For generations, we have focused on the individual drivers of success: passion, hard work, talent, and luck. But today, success is increasingly dependent on how we interact with others",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  BookActionBtn(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
