import 'package:flutter/material.dart';
import 'package:projeto8_loja_virtual/tabs/home_tab.dart';
import 'package:projeto8_loja_virtual/tabs/orders_tab.dart';
import 'package:projeto8_loja_virtual/tabs/places_tab.dart';
import 'package:projeto8_loja_virtual/tabs/products_tab.dart';
import 'package:projeto8_loja_virtual/widgets/cart_button.dart';
import 'package:projeto8_loja_virtual/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          floatingActionButton: CartButton(),
          appBar: AppBar(
            title: Text("Produtos "),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
        ),
        Scaffold(
        appBar: AppBar(
          title: Text("Lojas"),
          centerTitle: true,
        ),
        body: PlacesTab(),
        drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Meus Pedidos",),
            centerTitle: true,
          ),
          body: OrdersTab(),
          drawer: CustomDrawer(_pageController),
        )
      ],
    );
  }
}