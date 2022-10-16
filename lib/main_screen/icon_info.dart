import 'package:flutter/material.dart';

import '../const.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding*3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildColumnIcons(context:context,icon: Icons.supervised_user_circle_rounded,title: "client",desc: "22+"),
          buildColumnIcons(context:context,icon: Icons.location_on,title: "location",desc: "22+"),
          buildColumnIcons(context:context,icon: Icons.public,title: "contraries",desc: "22+"),
          buildColumnIcons(context:context,icon: Icons.star,title: "stars",desc: "22+"),
        ],
      ),
    );
  }

  Column buildColumnIcons({
   required BuildContext context,
    required IconData  icon,
    required String title,
    required String desc,

  }) {
    return Column(
        children: [
          Icon(icon,size: 50,),
          const SizedBox(height: kDefaultPadding/2,),
          Text(desc,style: Theme.of(context).textTheme.headline6!.copyWith(
            color: kPrimaryColor,
            fontSize: 30
          ),),
          Text(title,style: Theme.of(context).textTheme.subtitle1)
        ],
      );
  }
}
