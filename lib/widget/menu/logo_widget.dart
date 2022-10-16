import 'package:flutter/material.dart';

import '../../const.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.24,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const  Spacer(flex: 2,),
            Image.asset("assets/images/logo.png",width: 100,),
            const  Spacer(),
            Text(
              "Real Estate",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const  Text(
              "Modern Home With \n great interior design",
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5
              ),
            ),
            const  Spacer(flex: 2,),

          ],
        ),
      ),
    );
  }
}
