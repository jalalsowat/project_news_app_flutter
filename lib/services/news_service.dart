import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  getNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=60fac7b101cc49708111025b3e94e832&country=ae&category=general");
    Map<String, dynamic> jsondata = response.data;
    List<dynamic> articles = jsondata["articles"];

    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article["urlToImage"],
          title: article["title"],
          subTitle: article["description"]);
      articlesList.add(articleModel);
    }
    print("====================");
    print(articlesList);
    print("====================");
  }
}
