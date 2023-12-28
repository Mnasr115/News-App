import 'package:dio/dio.dart';

class NewsServices {

  final Dio dio;
  NewsServices(this.dio);

  void getGeneralNews () async {
    Response response = await dio.get('https://newsapi.org/v2/top-headlines?category=general&country=eg&apiKey=94c9d28958b04a9a840a8d07fa3081ba');
    Map<String,dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    print(articles);
  }


}