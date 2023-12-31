
import 'dart:convert';
import 'package:http/http.dart'as http;
import '../model/todo_model.dart';
class TodoRepository{
  Future<String> getAll() async {
    const url = 'https://jsonplaceholder.typicode.com/posts';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if(response.statusCode == 200){
     return response.body;
    }
    else{
      return "Error";
    }
  }

  Future<String> getProducts()async{
    const url = "https://dummyjson.com/products";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if(response.statusCode == 200){
      return response.body;
    }else{
      return "Error";
    }

  }

}
