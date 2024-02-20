import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/extensions/string_extension.dart';

class MyHomeBody extends StatefulWidget {
  const MyHomeBody({super.key});

  @override
  State<MyHomeBody> createState() => _MyHomeBodyState();
}

class _MyHomeBodyState extends State<MyHomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height -
              130 -
              MediaQuery.of(context).padding.bottom,
        ),
        child: Stack(
          children: <Widget>[
            Card(
              margin: EdgeInsets.fromLTRB(12, 60, 12, 10),
              color: Colors.white,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height -
                      150 -
                      MediaQuery.of(context).padding.bottom,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                    ),
                    _body(),
                    SizedBox(height: 84),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.fromLTRB(28, 0, 28, 24),
                child: MaterialButton(
                  onPressed: () {},
                  textColor: Colors.white,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  image: const DecorationImage(
                      image: ExactAssetImage("assets/images/mnp_one.jpeg")),
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return Column(
      children: <Widget>[
        const Text(
          "Thet Hnin Phyu",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: const Column(
                    children: <Widget>[
                      Icon(
                        Icons.abc,
                        size: 24,
                        color: Colors.black,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Favorite',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.black,
                height: 80,
                width: 1,
                child: const SizedBox(),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.abc,
                        size: 24,
                        color: Colors.black,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Order History',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        showInfo('Phone', "898609565", true),
        showInfo('Positio', 'Senior Mobile Developer', false),
        showInfo('Year of Experience', '5 year', false),
        showInfo('Email', "thethninphyu7777@gmail.com", true),
        showInfo('Gender', "Female", true),
        showInfo('Date of Birth', "08 03 1998".toString(), true),
        showInfo('Living Address', 'Yangon Myanmar', true)
      ],
    );
  }

  Widget showInfo(String title, String data, bool isDivider) {
    data = data.trim();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (data.availablNullCheckString())
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: MediaQuery.of(context).size.width),
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 2),
                Text(
                  data,
                  style: const TextStyle(
                    height: 1.5,
                    letterSpacing: 0.25,
                  ),
                ),
              ],
            ),
          ),
        if (data.availablNullCheckString() && isDivider)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
      ],
    );
  }
}
