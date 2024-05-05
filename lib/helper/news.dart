import 'dart:convert';

import 'package:my_new_app/models/article_model.dart';
import 'package:http/http.dart' as http;


class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    Uri url = Uri.parse("https://newsapi.org/v2/top-headlines?country=in&apiKey=6c5f0713a5914b5eaf56cce290dca709");

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        // Use null-aware operators and provide default values
        String title = element['title'] ?? '';
        String author = element['author'] ?? '';
        String description = element['description'] ?? '';
        String url = element['url'] ?? '';
        String urlToImage = element['urlToImage'] ?? '';
        String content = element['content'] ?? '';

        // Check if any of the essential properties are null
        if (urlToImage.isNotEmpty && description.isNotEmpty) {
          ArticleModel articleModel = ArticleModel(
              title: title,
              author: author,
              description: description,
              url: url,
              urlToImage: urlToImage,
              content: content
          );

          news.add(articleModel);
        }
      });
    }
  }
}
class CategoryNewsClass {
  List<ArticleModel> news = [];

  Future<void> getNews(String category) async {
    Uri url = Uri.parse("https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=6c5f0713a5914b5eaf56cce290dca709");

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        // Use null-aware operators and provide default values
        String title = element['title'] ?? '';
        String author = element['author'] ?? '';
        String description = element['description'] ?? '';
        String url = element['url'] ?? '';
        String urlToImage = element['urlToImage'] ?? '';
        String content = element['content'] ?? '';

        // Check if any of the essential properties are null
        if (urlToImage.isNotEmpty && description.isNotEmpty) {
          ArticleModel articleModel = ArticleModel(
              title: title,
              author: author,
              description: description,
              url: url,
              urlToImage: urlToImage,
              content: content
          );

          news.add(articleModel);
        }
      });
    }
  }
}
