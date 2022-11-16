import 'package:http/http.dart' as http;
import 'package:semana11_networking_m/api/listaPost.dart';
import 'post.dart';
import 'dart:convert';

class service{

  static Future<List<post>> getPost() async{

    final rspta=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if(rspta.statusCode==200){
      final rsptaJSON=json.decode(rspta.body);
      final todosPost=listPost.listaPost(rsptaJSON);
      return todosPost;
    }

    return <post>[];

  }

}