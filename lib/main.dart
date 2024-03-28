import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



import 'package:api_rest_stock/setting/app_theme.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {

  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<dynamic> producto = [];

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Rest API Call'), ),
        body: const Center(
          child: Text('Hello World!'),
        ),
        floatingActionButton: FloatingActionButton(onPressed: fetchStock,),
      ),
    );
  }

  void fetchStock() async{
    print('fetchStock solicitado');
    const url = 'https://script.google.com/macros/s/AKfycbwWIUx1QOCpXbDIczCZFF6r4RLNq0VATBx7S5wXjIHh-JIkkJlTXwyd1Cb88Hpoq-4-6Q/exec';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json =jsonDecode(body);
    setState(() {
      producto = json['output'];
    });
    print('fetchStock completo');
  }
}
