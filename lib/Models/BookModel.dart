class BookModel {
  String? id;
  String? title;
  String? description;
  double? rating;
  int? pages;
  String? language;
  String? audioLen;
  String? author;
  String? aboutAuthor;
  String? bookUrl;
  String? audioUrl;
  String? category;
  int? price;
  int? numberofRating;

  BookModel(
      {this.id,
        this.title,
        this.description,
        this.rating,
        this.pages,
        this.language,
        this.audioLen,
        this.author,
        this.aboutAuthor,
        this.bookUrl,
        this.audioUrl,
        this.category,
        this.price,
        this.numberofRating});

  BookModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    rating = json['rating'];
    pages = json['pages'];
    language = json['language'];
    audioLen = json['audioLen'];
    author = json['author'];
    aboutAuthor = json['aboutAuthor'];
    bookUrl = json['bookUrl'];
    audioUrl = json['audioUrl'];
    category = json['category'];
    price = json['price'];
    numberofRating = json['numberofRating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['rating'] = rating;
    data['pages'] = pages;
    data['language'] = language;
    data['audioLen'] = audioLen;
    data['author'] = author;
    data['aboutAuthor'] = aboutAuthor;
    data['bookUrl'] = bookUrl;
    data['audioUrl'] = audioUrl;
    data['category'] = category;
    data['price'] = price;
    data['numberofRating'] = numberofRating;
    return data;
  }
}
