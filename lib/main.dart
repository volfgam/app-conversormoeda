import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'home.dart';

const requestUrl = "https://api.hgbrasil.com/finance?format=json-cors&key=03f29d6d";

void main() async {

  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
        hintColor: Colors.amber,
        primaryColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.amberAccent)),
          focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
          hintStyle: TextStyle(color: Colors.amber)
        ))
  ));
}

Future<Map>  getData() async {
  http.Response response = await http.get(requestUrl);
  return json.decode(response.body);
  //["results"]["currencies"]["USD"];
}


