import 'package:e_book/Components/MultiLineTextFormField.dart';
import 'package:e_book/Components/MyTextFormField.dart';
import 'package:e_book/Config/Colors.dart';
import 'package:e_book/Controller/BookController.dart';
import 'package:e_book/Controller/PdfController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Components/MyBackButton.dart';

class AddNewBook extends StatelessWidget {
  const AddNewBook({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController controller = TextEditingController();
    PdfController pdfController = Get.put(PdfController());
    BookController bookController = Get.put(BookController());

    return Scaffold(
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
                              "Add New Book",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: Theme.of(context).colorScheme.background,),
                            ),
                            SizedBox(width: 68,),
                          ],
                        ),
                        SizedBox(height: 60,),
                        InkWell(
                          onTap: () {
                            bookController.pickimage();
                          },
                          child: Obx(
                                () => Container(
                                  height: 190,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Theme.of(context).colorScheme.background,
                                  ),
                                  child: Center(
                                    child: bookController.isImageUploading.value
                                        ? CircularProgressIndicator(color: primaryColor,)
                                        : bookController.imageUrl.value == ""
                                        ? Image.asset("Assets/Icons/addImage.png")
                                        : Image.network(bookController.imageUrl.value, fit: BoxFit.cover,),
                                  ),
                                ),
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
                      Expanded(
                        child: Obx(() => Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: bookController.pdfUrl.value == "" ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: bookController.isPdfUploading.value
                              ? Center(child: CircularProgressIndicator(color: backgroundColor,))
                              : bookController.pdfUrl.value == ""
                              ? InkWell(
                                onTap: () {
                                  bookController.pickPDF();
                                },
                                child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Image.asset("Assets/Icons/upload.png"),
                                SizedBox(width: 8,),
                                Text(
                                  "Book PDF",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(color: Theme.of(context).colorScheme.background,
                                  ),
                                ),
                            ],
                          ),
                              ) : InkWell(
                            onTap: () {
                              bookController.pdfUrl.value = "";
                            },
                                child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Image.asset("Assets/Icons/delete.png", width: 20,),
                                SizedBox(width: 8,),
                                Text(
                                  "Delete Pdf",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(color: Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                            ],
                          ),
                              ),
                        ),),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("Assets/Icons/upload.png"),
                              SizedBox(width: 8,),
                              Text(
                                "Book Audio",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(color: Theme.of(context).colorScheme.background,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  MyTextFormField(
                    hintText: "Book Title",
                    icon: Icons.book,
                    controller: bookController.title,
                  ),
                  SizedBox(height: 10,),
                  MultiLineTextFormField(
                      hintText: "Book Description",
                      controller: bookController.description,
                  ),
                  SizedBox(height: 10,),
                  MyTextFormField(
                    hintText: "Author Name",
                    icon: Icons.person,
                    controller: bookController.author,
                  ),
                  SizedBox(height: 10,),
                  MyTextFormField(
                    hintText: "About Author",
                    icon: Icons.person,
                    controller: bookController.aboutAuthor,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: MyTextFormField(
                          isNumber: true,
                          hintText: "Price",
                          icon: Icons.currency_rupee,
                          controller: bookController.price,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: MyTextFormField(
                          isNumber: true,
                          hintText: "Pages",
                          icon: Icons.menu_book,
                          controller: bookController.pages,
                        ),
                      ),
                    ],
                  ),SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: MyTextFormField(
                          hintText: "Language",
                          icon: Icons.language,
                          controller: bookController.language,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: MyTextFormField(
                          isNumber: true,
                          hintText: "Audio Len",
                          icon: Icons.audiotrack_outlined,
                          controller: bookController.audioLen,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.close, color: Theme.of(context).colorScheme.primary,),
                              SizedBox(width: 8,),
                              Text(
                                "Cancel",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Obx(() => Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: bookController.isPostUploading.value
                              ? Center(child: CircularProgressIndicator(),)
                              : InkWell(
                            onTap: () {
                              bookController.createBook();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("Assets/Icons/upload.png"),
                                SizedBox(width: 8,),
                                Text(
                                  "Upload",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(color: Theme.of(context).colorScheme.background,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),)
                      ),

                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
