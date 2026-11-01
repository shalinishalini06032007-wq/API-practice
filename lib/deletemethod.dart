import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Deletemethod extends StatefulWidget {
  const Deletemethod({super.key});

  @override
  State<Deletemethod> createState() => _DeletemethodState();
}

class _DeletemethodState extends State<Deletemethod> {
  Future<void> deletedata()async{
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    final response = await http.delete(url);
    if(response.statusCode == 200){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
        Text("data updated succesfully")
      ],)));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
        Text('data updated succesfully')
      ],)));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: deletedata, child: Text('update'))
          ],
        ),
      ),
    );
  }
}