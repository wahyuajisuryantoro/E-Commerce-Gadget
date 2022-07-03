
class Product {
  late List<ProductModel> _products;
  int? _total;
  int? _skip;
  int? _limit;
  List<ProductModel> get products=>_products;

  product({required products, required total, required skip, required limit}){
    this._products = products;
    this._total = total;
    this._skip = skip;
    this._limit = limit;
    
  }

  Product.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products.add(ProductModel.fromJson(v));
      });
    }
    _total = json['total'];
    _skip = json['skip'];
    _limit = json['limit'];
  }
}

class ProductModel {
  int? id;
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  ProductModel(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.stock,
      this.brand,
      this.category,
      this.thumbnail,
      this.images});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    stock = json['stock'];
    brand = json['brand'];
    category = json['category'];
    thumbnail = json['thumbnail'];
    images = json['images'].cast<String>();
  }


  }