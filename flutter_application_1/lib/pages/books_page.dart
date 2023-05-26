import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';
import 'package:flutter_application_1/widgets/book_card_widget.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final books = <Widget>[];
    for (var i = 0; i < 10; i++) {
      books.add(const BookCardWidget(
        ishome: false,
        title: 'To Kill a Mockingbird',
        cover:
            'https://th.bing.com/th/id/OIP.NGofr7d8y6lcAUn2SeXXPgAAAA?pid=ImgDet&rs=1',
      ));
    }
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarWidget(
            title: 'Books',
            friends: false,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            children: books,
          ),
        ));
  }
}
