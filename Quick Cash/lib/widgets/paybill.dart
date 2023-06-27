import 'package:bkash/models/contact.dart';
import 'package:bkash/widgets/contacts_widget.dart';
import 'package:bkash/widgets/paybill.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/AppTheme.dart';

class paybill extends StatefulWidget {
  const paybill({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _paybillState();
}

class _paybillState extends State<paybill> {
  final List<AppContact> myNumberlist = [
    AppContact(
        cId: "0",
        cImage: "assets/desco.png",
        cType: "organization name",
        cNumber: "1111",
        cName: "Desco"),
    AppContact(
        cId: "0",
        cImage: "assets/th.png",
        cType: "name",
        cNumber: "2222",
        cName: "NID"),
    AppContact(
        cId: "0",
        cImage: "assets/th.phg",
        cType: "Another",
        cNumber: "Seat-C2",
        cName: "Desco"),
    AppContact(
        cId: "0",
        cImage: "assets/desco.png",
        cType: "Another available",
        cNumber: "1111",
        cName: "Desco"),
    AppContact(
        cId: "0",
        cImage: "assets/desco.png",
        cType: "Another Buses",
        cNumber: "1111",
        cName: "Current"),
    AppContact(
        cId: "0",
        cImage: "assets/desco.png",
        cType: "Contacts",
        cNumber: "seat-2",
        cName: "Mirpur-link"),
    AppContact(
        cId: "0",
        cImage: "assets/desco.png",
        cType: "Contacts",
        cNumber: "seat-3",
        cName: "alif"),
    AppContact(
        cId: "0",
        cImage: "assets/th.png",
        cType: "Contacts",
        cNumber: "1111",
        cName: "desco"),
    AppContact(
        cId: "0",
        cImage: "assets/th.png",
        cType: "Contacts",
        cNumber: "3333",
        cName: "current"),
    AppContact(
        cId: "0",
        cImage: "assets/user.png",
        cType: "Contacts",
        cNumber: "01123456789",
        cName: "Zakaria"),
    AppContact(
        cId: "0",
        cImage: "assets/user.png",
        cType: "Contacts",
        cNumber: "01123456789",
        cName: "Bristi"),
    AppContact(
        cId: "0",
        cImage: "assets/user.png",
        cType: "Contacts",
        cNumber: "01123456789",
        cName: "Hossain"),
  ];

  final List<AppContact> recentList = [
    AppContact(
        cId: "0",
        cImage: "assets/desco.phg",
        cType: "Recents",
        cNumber: "111",
        cName: "Desko"),
    AppContact(
        cId: "0",
        cImage: "assets/th.png",
        cType: "Recents",
        cNumber: "01123456789",
        cName: "NID"),
  ];

  final List<AppContact> allContacts = [
    AppContact(
        cId: "0",
        cImage: "assets/user.png",
        cType: "Contacts",
        cNumber: "01123456789",
        cName: "Raju"),
    AppContact(
        cId: "0",
        cImage: "assets/user.png",
        cType: "Contacts",
        cNumber: "01123456789",
        cName: "Raina"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Card(
              color: Colors.white,
              margin: EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.fromLTRB(12, 8, 12, 4),
                        child: Text(
                          "For",
                          style: AppTheme.ntitleText,
                        ),
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(12, 8, 12, 18),
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                                hintText: "Find your organization",
                                hintStyle: AppTheme.hintText),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black45,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: ContactsWidget(
                    list: myNumberlist, title: "Organization list"))
          ],
        ),
      ),
    );
  }
}
