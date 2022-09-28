// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_24_7/pages/article_details.dart';
import '../model/article_model.dart';

Widget customListTile(Article article, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticlePage(
                    article: article,
                  )));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 14.0),
      child: Container(
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.75))
        ], color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            article.urlToImage != null
                ? Container(
                    height: MediaQuery.of(context).size.width * 0.45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(article.urlToImage.toString()),
                          fit: BoxFit.cover),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0)),
                    ))
                : Container(
                    height: MediaQuery.of(context).size.width * 0.45,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "http://cdn.differencebetween.net/wp-content/uploads/2018/01/Difference-between-Coding-and-Programming.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0)),
                    )),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                child: Text(
                  article.source!.name.toString(),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, bottom: 10.0, right: 8.0),
              child: Text(
                article.title.toString(),
                style: const TextStyle(fontSize: 18.0, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
