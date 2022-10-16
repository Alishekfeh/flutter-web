import 'package:flutter/material.dart';
import 'package:new_web_app/const.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        RowContact(title: "Address",text: "street 5",),
        RowContact(title: "Contry",text: "Jordan",),
        RowContact(title: "Email",text: "AliShekfeh@gmail.com",),
        RowContact(title: "Mobile",text: "0777777777",),
        RowContact(title: "Website",text: "Ali@website.com",),
      ],
    );
  }
}

class RowContact extends StatelessWidget {
  final String title,text;
  const RowContact({
    Key? key, required this.title, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: const TextStyle(color: Colors.white),),
          Text(text,),
        ],
      ),
    );
  }
}
