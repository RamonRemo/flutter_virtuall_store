import 'package:flutter/material.dart';
import 'package:projeto8_loja_virtual/models/cart_model.dart';
import 'package:scoped_model/scoped_model.dart';

import 'models/user_model.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModelDescendant<UserModel>(builder: (context, child, model) {
        return ScopedModel<CartModel>(
          model: CartModel(model),
          child: MaterialApp(
            title: "Fluters clothing",
            theme: ThemeData(
              primarySwatch: Colors.blue,
              primaryColor: Color.fromARGB(255, 4, 125, 141),
            ),
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),
          ),
        );
      }),
    );
  }
}
