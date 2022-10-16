import 'package:flutter/material.dart';
import 'package:new_web_app/main_screen/project_widget.dart';
import '../screens/home_page.dart';
import '../widget/menu/recommendation_project.dart';
import 'home_banner.dart';
import 'icon_info.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage(mainScreen:SingleChildScrollView(
      child: Column(
        children: const [
          HomeBanner(),
          IconInfo(),
          ProjectWidget(),
          RecommendationProjectWidget()
        ],
      ),
    )

      ,);
  }
}
