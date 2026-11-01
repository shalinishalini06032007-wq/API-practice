import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  Future <void> sendData()async{
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final response = await http.post(url,
    headers: <String,String>{
      'Content-Type':'application/json;charset=UTF-8',
    },
    body: jsonEncode(<String,String>{
      'title':'hello flutter',
      'body':'this is my post request body.',
    })
    );
    if (response.statusCode==201){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
        Icon(Icons.check),
        Text("successfully")
      ],)));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
        Icon(Icons.cancel),
        Text('failed'),
      ],)));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          sendData();
        }, child: Text('send')),
      ),
    );
  }
}