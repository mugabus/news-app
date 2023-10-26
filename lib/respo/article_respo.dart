

import 'dart:developer';

import 'package:http/http.dart' as http;
class ArticleRespo{
  Future<http.Response>getArticle() async{
 final url=Uri.parse('http://newsapi.org/v2/top-headlines?country=us&apiKey=52489cf346804f2eb180b8e34528aa26');
   final Response= await http.get(url);
   log(Response.body);
   return Response;
  }
}