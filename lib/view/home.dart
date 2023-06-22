import 'package:flutter/material.dart';
import 'package:news_app/view/widget/NewsContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(
          initialPage: 0,
        ),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return NewsContainer(
            imgUrl: "https://cdn.wionews.com/sites/default/files/styles/story_page/public/2023/06/22/361299-mofi-wer.png?imwidth=1920",
            newsHead: "PM Modi in highlights: US planning to ease H1-B visa rule for Indians, say report",
            newsDes: "PM Modi arrived in Washington DC on Wednesday on his second leg of the state visit to the US. He is expected to hold bilateral discussions with his American counterpart Joe Biden, and he will also address a joint session of the US Congress.",
            newsUrl: "https://www.wionews.com/world/pm-modi-in-us-live-updates-indian-pm-interacts-with-indian-and-american-students-607104",
          );
        }),
    );
  }
}
