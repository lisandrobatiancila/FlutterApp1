import 'package:fa1/model/product.model.dart';

class Product {
  List<ProductModel> product = [];

  List<ProductModel> getAllProduct() {
    product = [];

    product.add(ProductModel("Hansel", 12, 5));
    product.add(ProductModel("Fita", 6, 5));
    product.add(ProductModel("Combi", 8, 5));

    return product;
  }

  void addNewProduct(ProductModel item) {
    product.add(item);
  }

}
