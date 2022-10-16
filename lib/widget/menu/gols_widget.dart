import 'package:flutter/material.dart';
import 'package:new_web_app/const.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoalsWidget extends StatelessWidget {
  const GoalsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text("Goals",style: TextStyle(color: Colors.white),),
        ),
        buildRowGoals(text: "Planning stage"),
        buildRowGoals(text: "Development"),
        buildRowGoals(text: "Execution phase"),
        buildRowGoals(text: "New way to living"),

      ],
    );
  }

  Padding buildRowGoals({required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
      child: Row(
          children: [
            SvgPicture.asset("assets/icons/check.svg"),
            const SizedBox(width: kDefaultPadding/2,),
            Text(text),
          ],
        ),
    );
  }
}
