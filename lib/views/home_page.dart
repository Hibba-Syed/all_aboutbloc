import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubit/internet_cubit/internet_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Center(
          child: BlocConsumer<InternetCubit, InternetState>(
            listener: (context, state) {
             if(state == InternetState.Gained){
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Internet Connected!"),
            backgroundColor: Colors.green,
          ),);
             }else if (state == InternetState.Lost){
               ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Internet not Connected!"),
                 backgroundColor: Colors.green,
               ),
               );

             }
            },
            builder: (context, state) {
              if(state == InternetState.Gained) {
                return const Text("Connected");
              }else if (state == InternetState.Lost){
                return const Text("Not Connected");
              }
              else {
                return const Text("Loading");
              }

            },
          )),


    );
  }
}
