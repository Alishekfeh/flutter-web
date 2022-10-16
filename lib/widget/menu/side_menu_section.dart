import 'package:flutter/material.dart';
import '../../const.dart';
import 'contact_info.dart';
import 'gols_widget.dart';
import 'logo_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const LogoWidget(),
            Expanded(
                child: SingleChildScrollView(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ContactInfo(),
                  const Divider(),
                  const GoalsWidget(),
                  const Divider(),
                  const SizedBox(height: kDefaultPadding/2,),
                  TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/icons/download.svg"),
                            const SizedBox(
                              width: kDefaultPadding / 2,
                            ),
                            Text(
                              "Download Brochure",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            )
                          ],
                        ),
                      )),
                  Container(
                    color: kSecondaryColor,
                    margin:const  EdgeInsets.only(top: kDefaultPadding*1.2),
                    child: Row(
                      children: [
                        const Spacer(),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/dribble.svg")),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/github.svg")),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/linkedin.svg")),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/twitter.svg")),
                        const Spacer()
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
