import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var number = 0;
  String _message ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App",
          style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,),),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          children: [
            const Text("For testing purpose",
              style: TextStyle(fontSize: 28, color: Colors.red, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 8,),
            Text("$number", style: const TextStyle(fontSize: 28, color: Colors.black),),
            Text(_message, style: const TextStyle(fontSize: 20, color: Colors.red),),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(onPressed: (){
                setState(() {
                  number = number + 1;
                });
                if (number > 0){
                  setState(() {
                    _message = "";
                  });
                }
              },
                  child: const Text("Increment", style: TextStyle(fontSize: 20,),)),
            ),
            const SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(onPressed: (){
                if (number > 0){
                  setState(() {
                    number = number - 1;
                  });
                }
                else if (number == 0) {
                  setState(() {
                    _message = "Number cannot be less than 0";
                  });
                }
              }, child: const Text("Decrement", style: TextStyle(fontSize: 20,),)),
            ),
            const SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(onPressed: (){
                setState(() {
                  number = 0;
                });
                if (number <= 0){
                  setState(() {
                    _message = "";
                  });
                }
              },
                  child: const Text("Reset", style: TextStyle(fontSize: 20,),)),
            ),
          ],
        ),
      ),
    );
  }
}

