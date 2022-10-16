import 'package:flutter/material.dart';
import 'package:new_web_app/const.dart';
import 'package:new_web_app/responsive.dart';

import '../widget/menu/side_menu_section.dart';

class HomePage extends StatelessWidget {
  final Widget mainScreen;
  const HomePage({Key? key, required this.mainScreen}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Responsive.isDesktop(context)?null: AppBar(
        backgroundColor: kBgColor,
        leading: Builder(
          builder: (context)=>IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, icon:const  Icon(Icons.menu)),
        ),
      ),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1440.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(Responsive.isDesktop(context))
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    child:const  SideMenuSection(),
                  )),
              Expanded(
                  flex: 7,
                  child: mainScreen
              ),
            ],
          ),
        ),
      ),
    );
  }
}
