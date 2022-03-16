import 'dart:convert';
import 'dart:io';
import 'package:api_example/welcome.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main()=>runApp(MaterialApp(home:entryPage(),));

class entryPage extends StatefulWidget {
  const entryPage({Key? key}) : super(key: key);

  @override
  State<entryPage> createState() => _entryPageState();
}

class _entryPageState extends State<entryPage> {
  userClass user = userClass();
  bool loading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [

        ],
        ),
      ),
    );
  }





  void getUserData() async{
    var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await http.get(url);
    var jsonresponse = json.decode(response.body);
    final length = jsonresponse.length;
        user = userClass.fromJson(jsonresponse[index]);
    });
  }
}

