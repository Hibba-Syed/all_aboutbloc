part of 'product_cubit.dart';

class ProductState{
  final ProductModel? productModel;
  final bool loading;
  final String? error;
  ProductState({this.productModel,this.error,this.loading=false});
  ProductState copyWith({
    final ProductModel? productModel,
    final bool? loading,
    final String? error
    }){
    return ProductState(
      productModel: productModel ??this. productModel,
      loading: loading ?? this.loading,
      error: error ?? this.error
    );
}
}