import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubit/product_cubit/product_cubit.dart';
import 'package:practice/views/seconde_page.dart';
import 'package:practice/cubit/todo_cubit/todo_cubit.dart';
import 'package:practice/views/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoCubit>(create: (context) => TodoCubit()),
        BlocProvider<ProductCubit>(create: (context) => ProductCubit()), // Add your new cubit here
      ],
      child: MaterialApp(
        title: 'Bloc',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  const TodoPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


