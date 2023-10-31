import 'package:e_book/Components/PrimaryButton.dart';
import 'package:e_book/Pages/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50,),
                      Image.asset(
                        "Assets/Images/book.png",
                        width: 380,
                      ),
                      const SizedBox(height: 60,),
                      Text(
                        "E - Book Store",
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                            color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Text(
                        "Your gateway to literary adventures - read or listen, it's all in your hands with our ebook app",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.white60,
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
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Disclaimer",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        "This ebook application is provided for informational and entertainment purposes only. We do not guarantee the accuracy or completeness of the content and are not responsible for any potential errors or damages incurred while using the application. Your use of this application signifies your acceptance of these terms.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: PrimaryButton(
              btnName: "CONTINUE",
              ontap: () {
                Get.offAll(HomePage());
              },
            ),
          )
        ],
      ),
    );
  }
}
