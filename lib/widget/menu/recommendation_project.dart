import 'package:flutter/material.dart';
import 'package:new_web_app/widget/menu/recommendation_card.dart';

import '../../const.dart';
import '../../models/recommendation.dart';

class RecommendationProjectWidget extends StatelessWidget {
  const RecommendationProjectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        children: [
          Text(
            "Client Recommendation:",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  demoRecommendations.length,
                  (index) => Padding(
                      padding: const EdgeInsets.only(right: kDefaultPadding),
                      child: RecommendationCard(
                        recommendation: demoRecommendations[index],
                      ))),
            ),
          )
        ],
      ),
    );
  }
}
