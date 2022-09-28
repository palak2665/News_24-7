import 'package:flutter/material.dart';
import 'package:news_24_7/services/api_service.dart';
import 'package:news_24_7/widgets/category_view.dart';
import 'package:news_24_7/widgets/customListTile.dart';
import 'package:news_24_7/widgets/search_bar.dart';

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
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              children: [
                TextSpan(text: "news", style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: "24/7",
                    style: TextStyle(color: Theme.of(context).primaryColor))
              ]),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
      ),
      body: Column(
        children: [
          searchBar(context),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: categoryView(),
          ),
          SizedBox(
            height: 15.0,
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
    );
  }
}
