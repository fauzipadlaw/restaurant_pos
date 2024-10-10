import 'package:get_storage/get_storage.dart';

import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../models/product_model.dart';

class ProductRepositoryImpl implements ProductRepository {
  final GetStorage storage = GetStorage();

  @override
  Future<List<Product>> getAllProducts() async {
    final products = storage.read('products') ?? [];
    return products.map<ProductModel>((p) => ProductModel.fromJson(p)).toList();
  }
}
