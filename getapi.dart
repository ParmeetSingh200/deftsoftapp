import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class GetApiPage extends StatefulWidget {
  const GetApiPage({super.key});

  @override
  State<GetApiPage> createState() => _GetApiPageState();
}

class _GetApiPageState extends State<GetApiPage> {

List<Product> _productModel = [];

  // void main() => runApp(MyApp());
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _productModel = (await fetchProducts());
    Future.delayed(const Duration(seconds: 3)).then((value) => setState(() {}));
  }
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
        body: ListView.builder(
                  itemCount: _productModel!.length,
                  itemBuilder: (context, index) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(_productModel![index].title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold)),
                          const Divider()
                        ]);
                  }),
            // By default, show a loading spinner
            // return const CircularProgressIndicator();
      ),
    );
  }

 List<Product> parseProducts(String responseBody) {
    final data = json.decode(responseBody);
    List<Product> productList = [];
    List<dynamic> products = data["products"];
    final dict = products.map((e) {
      return Product.fromJson(e);
    }).toList();
    productList = dict;
    return productList;
    //productList = dict;
    // return
    //return parsed.map<Product>((json) => Product.fromJson(json)).toList();
  }

  Future<List<Product>> fetchProducts() async {
    var url = Uri.parse('https://dummyjson.com/products');
    final response = await http.get(url);
    List<Product> array = [];
    if (response.statusCode == 200) {
    array=  parseProducts(response.body);
      return array;
    } else {
      throw Exception('Unable to fetch products from the REST API');
    }
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
