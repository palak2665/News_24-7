import 'package:flutter/material.dart';

TextEditingController searchController = new TextEditingController();
Widget searchBar(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8),
    margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Color.fromARGB(255, 213, 213, 213))),
    child: Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            child: Icon(
              Icons.search,
              color: Theme.of(context).primaryColor,
            ),
            margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
          ),
        ),
        Expanded(
          child: TextField(
            controller: searchController,
            textInputAction: TextInputAction.search,
            onSubmitted: (value) {},
            decoration: InputDecoration(
                border: InputBorder.none, hintText: "Search for article..."),
          ),
        )
      ],
    ),
  );
}
