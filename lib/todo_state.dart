part of 'todo_cubit.dart';


 class TodoState {
   final List<TodoModel>? todoModel;
  final bool loading;
  final String? error;
 const  TodoState({this.todoModel, this.error, this.loading = false});
   TodoState copyWith(
       {
         final List<TodoModel>? todoModel,
         final bool? loading,
         final String? error}) {
     return TodoState(
         todoModel: todoModel ?? this.todoModel,
         loading: loading ?? this.loading,
         error: error ?? this.error
     );
   }
 }






