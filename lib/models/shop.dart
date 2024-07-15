import "package:flutter/material.dart";
import "product.dart";

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        name: "Moletom",
        price: 99,
        description: "Moletom Básico",
        imagePath: "assets/moletom.jpg"),
    Product(
        name: "Óculos de Sol",
        price: 99,
        description: "Óculos de Sol estilo Aviador",
        imagePath: "assets/oculos.jpg"),
    Product(
        name: "Relógio",
        price: 99,
        description: "Relógio de Pulso elegante",
        imagePath: "assets/relogio.jpg"),
    Product(
        name: "Tênis",
        price: 99,
        description: "Tênis Casual",
        imagePath: "assets/tenis.jpg"),
  ];

  List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

//adicionar produto ao carrinho
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
