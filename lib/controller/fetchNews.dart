// https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=5ea41b835b894fd2a4658019595ea5b8
import "dart:convert";
import "dart:math";

import "package:http/http.dart";

class FetchNews{

    static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
    
  ];

  static fetchNews() async{

    final _random = new Random();
    var element = sourcesId[_random.nextInt(sourcesId.length)];
    print("element is : ");
    print(element);

    Response response = await get(Uri.parse(
      "https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=5ea41b835b894fd2a4658019595ea5b8"
      ));

      Map body_data = jsonDecode(response.body);
      List articles = body_data["articles"];
      print("articles are : ");
      print(articles[0]["title"]);

      final _Newrandom = new Random();
      var MyArticle = sourcesId[_random.nextInt(articles.length)];
      print("MyArticle is : ");
      print(MyArticle);

      print("body data is : ");
      print(body_data);
  }

}