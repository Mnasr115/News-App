import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    //هنعمل request
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?category=$category&country=us&apiKey=94c9d28958b04a9a840a8d07fa3081ba');
      // هنستقبل بيانات
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles =
          jsonData['articles']; // list of articale على هيئة  map
      //عشان أحول الماب اللي جيالي ل article model
      List<ArticleModel> articleList = []; // list of articale على هيئة object
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
     return [];
    }
  }
}
