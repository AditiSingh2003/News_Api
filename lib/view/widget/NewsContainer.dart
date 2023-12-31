import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {

  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsContent;

    NewsContainer({super.key,
    required this.imgUrl,
    required this.newsContent,
    required this.newsHead,
    required this.newsUrl,
    required this.newsDes,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              Image.network(
                height:400,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                imgUrl),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),

              Text(newsHead,
              style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(newsDes,
              style: TextStyle(fontSize: 12, color: Colors.black38),
              ),
              SizedBox(
                height: 10,
              ),
              Text(newsContent,
              style: TextStyle(fontSize: 16,),
              ),

              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                    onPressed: (){
                      print("Going to $newsUrl");
                    },
                    child: Text("Read More"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,)
            ],),
    );
  }
}