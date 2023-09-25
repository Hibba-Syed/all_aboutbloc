import 'package:bloc/bloc.dart';
import 'package:practice/model/product_model.dart';
import 'package:practice/repo/repo_api.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductState());
  
  Future<void> fetchProducts()async{
    emit(state.copyWith(loading: true));
    await TodoRepository().getProducts().then((value) {
      if(value!= "Error" ){
        return emit(state.copyWith(productModel: productModelFromJson(value), loading: false) );
      }
      emit(state.copyWith(error: "Error"));
      
    });
    
  }
  
}
