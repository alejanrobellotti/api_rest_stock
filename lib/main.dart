import 'package:api_rest_stock/setting/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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

  void fetchStock(){
    print('fetchStock solicitado');
  }
}
