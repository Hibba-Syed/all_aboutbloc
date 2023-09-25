import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubit/product_cubit/product_cubit.dart';

import '../model/product_model.dart';

class SecondApi extends StatefulWidget {
  const SecondApi({super.key});

  @override
  State<SecondApi> createState() => _SecondApiState();
}
class _SecondApiState extends State<SecondApi> {
  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().fetchProducts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.error != null) {
            return const Text("some error");
          }
          return ListView.builder(
             itemCount: state.productModel?.products?.length,
              itemBuilder: (context,index){
               final products = state.productModel?.products?[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(products?.title ?? ""),
                        const SizedBox(height: 10,),
                        Text(products?.brand.toString()??""),
                        const SizedBox(height: 10,),
                        Text(products?.category??""),
                        const SizedBox(height: 10,),
                        Text(products?.discountPercentage.toString() ?? ""),
                        const SizedBox(height: 10,),
                        Text(products?.description??""),
                        const SizedBox(height: 10,),
                       // Image.network(products?.thumbnail??""),
                        const SizedBox(height: 10,),
                        Image.network(products?.images!.last ?? ""),
                      ],
                    ),
                  ),
                );
              }
          );
        },
      ),
    );
  }
}
