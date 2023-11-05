import 'package:e_book/Controller/PdfController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BookPage extends StatelessWidget {
  final String bookUrl;
  const BookPage({super.key, required this.bookUrl});

  @override
  Widget build(BuildContext context) {
    PdfController pdfController = Get.put(PdfController());
    return Scaffold(
      appBar: AppBar(
         leading: BackButton(
           color: Theme.of(context).colorScheme.background,
         ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Book Title",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Theme.of(context).colorScheme.background,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: Tooltip(
        message: "Bookmarks",
        child: FloatingActionButton(
          onPressed: () {
            pdfController.pdfViewerKey.currentState?.openBookmarkView();
          },
          child: Icon(
            Icons.bookmark_add_outlined,
            color: Theme.of(context).colorScheme.background,
          ),
        ),
      ),
      body: SfPdfViewer.network(
        bookUrl,
        key: pdfController.pdfViewerKey,
      ),
    );
  }
}
