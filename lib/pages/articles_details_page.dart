import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/model/article_model.dart';

class ArticlePage extends StatelessWidget {
  final Article article;
  ArticlePage({this.article});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.date),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(article.link),
                fit: BoxFit.cover,
              )),
            ),
            SizedBox(
              height: 8.0,
            ),
            //CRVENI NASLOV
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                article.date,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              article.date,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
