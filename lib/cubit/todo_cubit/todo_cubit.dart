import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:practice/repo/repo_api.dart';

import '../../model/todo_model.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(const TodoState());

  Future<void> fetchTodo() async{
    emit(state.copyWith(loading: true));
   await TodoRepository().getAll().then((value) {
     if(value!="Error"){
     return  emit(state.copyWith(todoModel: todoModelFromJson(value) , loading: false)
       );
     } emit(state.copyWith(error: "Error"));
   });


  }
}
