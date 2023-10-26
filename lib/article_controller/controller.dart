import 'dart:convert';

import '../models/article.dart';
class ArticleController{
 final articleRespo =ArticleController();
 Future<List<Article>>getArticle() async{
   final Response= await articleRespo.getArticle();
   final data= Response.body;
   List<Article> articles =[];
   final articlesJson =data['articles'];
   for(dynamic articlesJson in articlesJson) {
     articles.add(Article.fromJson(articlesJson));
   }
   return articles;
   }

 }
