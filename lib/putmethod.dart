import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Putmethod extends StatefulWidget {
  const Putmethod({super.key});

  @override
  State<Putmethod> createState() => _PutmethodState();
}

class _PutmethodState extends State<Putmethod> {
  Future<void> putData()async{
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    final response = await http.put(url,
    headers: <String,String>{
      'Content-Type':'application/json;charset=UTF-8',
    },
    body: jsonEncode(<String,String>{
      'tittle':'hello flutter',
      'body':'this is my updated request body'
    })
    );
    if(response.statusCode==200){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
        Text("data updated sucessfully")
      ],)));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(
        children: [Text('data is not updated')],
      )));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: putData, child: Text('update'))
          ],
        ),
      ),
    );

  }
}