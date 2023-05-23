import 'package:flutter/material.dart';

import 'package:nike_shop/utils/pages.dart';
import 'package:nike_shop/view/products_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: ProductsPage.routeName,
      getPages: getPage,
    );
  }
}
