import 'package:flutter/material.dart';

List<String> getListElements() {
  var items = List<String>.generate(30, (counter) => "Problem ${counter + 1}");
  return items;
}

Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(
      itemBuilder: (context, index) {
        if ((index+1)%2 == 0) {
          return ListTile(
            title: Text(listItems[index]),
            leading: const Icon(Icons.arrow_right),
            trailing: const Icon(Icons.star),
              onTap: () =>
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${listItems[index]} is my favorite.")))
          );
        }
        return ListTile(
          title: Text(listItems[index]),
          leading: const Icon(Icons.arrow_right),
            onTap: () =>
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${listItems[index]} is selected.")))
        );
      }
  );
  return listView;
}