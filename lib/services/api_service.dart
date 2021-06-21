import 'dart:convert';
import 'package:http/http.dart';
import 'dart:async';
import 'package:untitled/model/article_model.dart';

class ApiService {
  final endPointUrl = "https://eosmrtnice.ba/wp-json/wp/v2/osmrtnica";

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(endPointUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ('Cant get the article');
    }
  }
}
