import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Getmethod extends StatefulWidget {
  const Getmethod({super.key});

  @override
  State<Getmethod> createState() => _GetmethodState();
}

class _GetmethodState extends State<Getmethod> {
  Future<void> getdata()async{
    final url = Uri.parse(
      'https://jsonplaceholder.typicode.com/posts',
    );
    final response = await http.get(url);
    if(response.statusCode == 200){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(
        children: [Text("data get succesfully")],
      )));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(
        children: [Text("get method failed")],
      )));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: getdata, child: Text('get data')),
          )
        ],
      ),
    );

  }
}