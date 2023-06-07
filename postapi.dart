import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'getapi.dart';

class PostApiPage extends StatefulWidget {
  const PostApiPage({super.key});

  @override
  State<PostApiPage> createState() => _PostApiPageState();
}

class _PostApiPageState extends State<PostApiPage> {
  // Product productmodel = Product();

  @override
  void initState() {
    super.initState();
    send();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fetch Data Example',
      home: Scaffold(
        body: Center(
            // child: ElevatedButton(onPressed: send, child: Text("Add Data")),
            ),
      ),
    );
  }

  void send() async {
    Product model = Product(id: 3, title: "iPhone14Pro");
    var id = model.id;
    var url = Uri.parse('https://dummyjson.com/products/$id');
    var response = await http.put(url,
        headers: {"Content-type": "application/json"},
        // body: json.encode(model.toJson()));
    body: json.encode({'title': 'ApllePhone'}));
    print("hello");
    print(response.body);
    // Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  }
}

class Product {
  late int id;
  late String title;

  Product({
    required this.id,
    required this.title,
  });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;

    return data;
  }
}
