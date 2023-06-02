import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Container(
          child: FutureBuilder<List<Product>>(
            future: fetchProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(snapshot.data![index].title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            const Divider()
                          ]);
                    });
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

//  Future<List<Product>>  fetchUsersFromGitHub()  {
//     var url = Uri.parse('https://dummyjson.com/products');
//     final response = http.get(url);
//     // print(response.body);
//    List responseJson = json.decode(response.body.toString());
//     List<Product> userList = createUserList(responseJson);
//     return userList;
//   }

// List<Product> productFromJson(String str) =>
//     List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

  void  parseProducts(String responseBody) {
    final data = json.decode(responseBody);
   // return
    //return parsed.map<Product>((json) => Product.fromJson(json)).toList();
  }

  Future<List<Product>> fetchProducts() async {
    var url = Uri.parse('https://dummyjson.com/products');
    final response = await http.get(url);
    List<Product> array = [];
    if (response.statusCode == 200) {
      
      return array;
    } else {
      throw Exception('Unable to fetch products from the REST API');
    }
  }

  List<Product> createUserList(List data) {
    List<Product> list = [];
    for (int i = 0; i < data.length; i++) {
      int id = data[i]["id"];
      String title = data[i]["title"];
      Product user = Product(id: id, title: title);
      list.add(user);
    }
    return list;
  }
}

class Product {
  late int id;
  late String title;
  // late String description;
  // late int price;
  // late double discountPercentage;
  // late double rating;
  // late int stock;
  // late String brand;
  // late String category;
  // late String thumbnail;
  // late List<String> images;

  Product({
    required this.id,
    required this.title,
    //   required this.description,
    //  required this.price,
    //  required this.discountPercentage,
    //  required this.rating,
    //  required this.stock,
    // required this.brand,
    //  required this.category,
    //  required this.thumbnail,
    //  required this.images
  });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    // description = json['description'];
    // price = json['price'];
    // discountPercentage = json['discountPercentage'];
    // rating = json['rating'];
    // stock = json['stock'];
    // brand = json['brand'];
    // category = json['category'];
    // thumbnail = json['thumbnail'];
    // images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    // data['description'] = description;
    // data['price'] = price;
    // data['discountPercentage'] = discountPercentage;
    // data['rating'] = rating;
    // data['stock'] = stock;
    // data['brand'] = brand;
    // data['category'] = category;
    // data['thumbnail'] = thumbnail;
    // data['images'] = images;
    return data;
  }
}





// class Product {
// //  late List<Products> products;
//   late int total;
//   late int skip;
// //  late int limit;

//   Product({required this.total, required this.skip});
// }
// class User {
//   String name;
//   int id;
//   User({required this.name, required this.id});
// }
// 