import '../../domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel(
      {required super.id,
      required super.name,
      required super.price,
      required super.stock});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      stock: json['stock'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'stock': stock,
    };
  }
}
