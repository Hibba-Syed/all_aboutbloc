import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/todo_cubit.dart';
class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  void initState(){
    super.initState();
     context.read<TodoCubit>().fetchTodo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TodoCubit, TodoState>(
        builder: (context, state) {
          if(state.loading){
            return const Center(
                child: CircularProgressIndicator());
          } if (state.error!= null){
            return const Center(
                child: CircularProgressIndicator());}
            final todos = state.todoModel;
            return ListView.builder(
              itemCount: todos?.length,
                itemBuilder: (context,index ){
                final todo = todos?[index];
                  return InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      title: Text(todo?.title??""),
                    ),
                  );

                }
            );
          }

      ),

    );
  }
}
