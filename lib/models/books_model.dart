import 'package:assessment_recap_flutter/models/book_model.dart';

class BooksModel {
  final List<BookModel> books;

  BooksModel({required this.books});

  factory BooksModel.fromJson(List<Map<String, dynamic>> json) {
    List<BookModel> books = json
        .map<BookModel>(
          (book) => BookModel(
            imageUrl: book['imageUrl'] ?? ' ',
            title: book['title'] ?? ' ',
            author: book['author'],
            description: book['description'] ?? ' ',
            price: book['price'] ?? 0,
            rating: book['rate'] ?? 0,
          ),
        )
        .toList();

    return BooksModel(books: books);
  }
}
