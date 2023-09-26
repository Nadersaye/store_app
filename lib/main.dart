import 'package:flutter/material.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:store_app/screens/update_product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomwScreen.id,
      routes: {
        HomwScreen.id: (context) => const HomwScreen(),
        UpdateProductScreen.id: (context) => const UpdateProductScreen()
      },
    );
  }
}
