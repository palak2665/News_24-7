import 'package:flutter/material.dart';
import 'package:news_24_7/services/api_service.dart';
import 'package:news_24_7/widgets/customListTile.dart';

import '../model/article_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ApiService client = ApiService();
  Future<ApiService> _refreshProducts(BuildContext context) async {
    return ApiService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cutewallpaper.org/27/bue-green-gradient-wallpaper/1790814467.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 15.0),
                child: RichText(
                  text: const TextSpan(
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: "NEWS "),
                        TextSpan(
                            text: "24/7", style: TextStyle(color: Colors.red))
                      ]),
                ),
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () => _refreshProducts(context),
                  child: FutureBuilder(
                    future: client.getArticle(),
                    builder: (BuildContext context,
                        AsyncSnapshot<List<Article>> snapshot) {
                      if (snapshot.hasData) {
                        List<Article>? articles = snapshot.data;
                        return ListView.builder(
                            itemCount: articles!.length,
                            itemBuilder: (context, index) =>
                                customListTile(articles[index], context));
                      }
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.black,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
