import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicListView extends StatelessWidget {
  const BasicListView({Key? key}) : super(key: key);

  void loot() {

  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        ListTile(
          title: const Text('Engineer'),
          leading: const Icon(Icons.engineering),
            trailing: const Icon(Icons.star),
            onTap: () =>
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("EG")))
        ),
        ListTile(
          title: const Text('Agriculture'),
          leading: const Icon(Icons.agriculture_rounded),
            onTap: () =>
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("AG")))

        ),
        ListTile(
          title: const Text('Architecture'),
          leading: const Icon(Icons.architecture),
            onTap: () =>
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("AC")))
        ),
      ],
    );
  }

}