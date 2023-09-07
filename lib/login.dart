import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
            const SizedBox(height: 100,),
            const Text("error will show up here ",
              style: TextStyle(color: Colors.red),),
             const SizedBox(height: 20,),
             const TextField(
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
              const SizedBox(height: 10,),
              const TextField(
                decoration: InputDecoration(
                  hintText: "password",
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: MediaQuery.sizeOf(context).width * 0.1,
                width: MediaQuery.sizeOf(context).height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ElevatedButton(
                    onPressed: (){
                    },
                    child:const  Text("Validate"),
                ),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                // Within the `FirstRoute` widget
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  Login()),
                    );
                  },
                  child:const Text("Login with email and password"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
