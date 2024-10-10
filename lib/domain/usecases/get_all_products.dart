import '../../core/usecases/usecase.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

class GetAllProducts implements UseCase<List<Product>, NoParams> {
  final ProductRepository repository;

  GetAllProducts(this.repository);

  @override
  Future<List<Product>> call(NoParams params) {
    return repository.getAllProducts();
  }
}
