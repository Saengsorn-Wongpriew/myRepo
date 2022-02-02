import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class PetName extends StatelessWidget {
  const PetName({Key? key, required this.name, required this.imagePath}) : super(key: key);

  final String name;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(color: Colors.teal),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name),
          ),
        ),
        const SizedBox(height: 84.0,),
        Image(
          image: AssetImage(imagePath),
        )
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myPetApp = MaterialApp(
      title: 'My Pet App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Pet App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  PetName(name: "Sparrow", imagePath: "lib/asset/images/spropsapro.jpg"),
                  SizedBox(width: 15.0),
                  PetName(name: "Elephant", imagePath: "lib/asset/images/FO_66338.jpg"),
                  SizedBox(width: 15.0),
                  PetName(name: "Chair", imagePath: "lib/asset/images/56fc2fb067746ea27f25186e788c2e34.jpg"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    return myPetApp;
  }
}
