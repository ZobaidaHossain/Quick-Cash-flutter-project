import 'package:bkash/models/contact.dart';
import 'package:bkash/widgets/contacts_widget.dart';
import 'package:bkash/widgets/ticket.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/AppTheme.dart';

class ticket extends StatefulWidget {
  const ticket({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ticketState();
}

class _ticketState extends State<ticket> {
  final List<AppContact> myNumberlist = [
    AppContact(
        cId: "0",
        cImage: "assets/bus.jpg",
        cType: "Bus name",
        cNumber: "Seat-B1",
        cName: "Himaloy"),
    AppContact(
        cId: "0",
        cImage: "assets/bus.jpg",
        cType: "Bus list",
        cNumber: "Seat-A2",
        cName: "Shamoli"),
    AppContact(
        cId: "0",
        cImage: "assets/bus.jpg",
        cType: "Another Buses",
        cNumber: "Seat-C2",
        cName: "Himachol"),
    AppContact(
        cId: "0",
        cImage: "assets/bus.jpg",
        cType: "Another available Buses",
        cNumber: "Seat-D1",
        cName: "ekushe"),
    AppContact(
        cId: "0",
        cImage: "assets/bus.jpg",
        cType: "Another Buses",
        cNumber: "Seat-1",
        cName: "Sikor"),
    AppContact(
        cId: "0",
        cImage: "assets/bus.jpg",
        cType: "Contacts",
        cNumber: "seat-2",
        cName: "Mirpur-link"),
    AppContact(
        cId: "0",
        cImage: "assets/bus.jpg",
        cType: "Contacts",
        cNumber: "seat-3",
        cName: "alif"),
    AppContact(
        cId: "0",
        cImage: "assets/bus.jpg",
        cType: "Contacts",
        cNumber: "seat-5",
        cName: "pojapoti"),
    AppContact(
        cId: "0",
        cImage: "assets/bus.jpg",
        cType: "Contacts",
        cNumber: "seat-3",
        cName: "metro"),
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
        cImage: "assets/user.png",
        cType: "Recents",
        cNumber: "01123456789",
        cName: "Galib"),
    AppContact(
        cId: "0",
        cImage: "assets/user.png",
        cType: "Recents",
        cNumber: "01123456789",
        cName: "Yeana"),
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
                                hintText: "Enter your favourate bus name",
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
                child: ContactsWidget(list: myNumberlist, title: "Bus list"))
          ],
        ),
      ),
    );
  }
}
