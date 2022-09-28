import 'package:flutter/material.dart';

class categoryView extends StatefulWidget {
  const categoryView({super.key});

  @override
  State<categoryView> createState() => _categoryViewState();
}

class _categoryViewState extends State<categoryView> {
  List<String> navBarItem = [
    "Top News",
    "India",
    "World",
    "Finance",
    "Health",
    "Technology"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: navBarItem.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("This Feature is not yet build."),
                    duration: Duration(milliseconds: 500),
                  ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(navBarItem[index],
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              );
            }));
  }
}
