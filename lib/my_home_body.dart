import 'package:flutter/material.dart';
import 'package:portfolio/about%20me/about_view.dart';
import 'package:portfolio/experience/experience_view.dart';
import 'package:portfolio/extensions/string_extension.dart';
import 'package:portfolio/projects/project_main.dart';
import 'package:portfolio/skills/my_skills.dart';

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
              margin: const EdgeInsets.fromLTRB(12, 60, 12, 10),
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
                    const SizedBox(height: 84),
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
                      fit: BoxFit.cover,
                      image: ExactAssetImage("assets/images/profile.jpeg")),
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
        const Center(
          child: Text(
            "Hello! I am a passionate Mobile developer. I love creating mobile applications that make a difference.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          ),
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutView()),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/skill.jpeg",
                          width: 30, height: 30),
                      const SizedBox(height: 4),
                      const Text(
                        'Skills',
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExperienceView()),
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("assets/images/phone.png",
                          width: 24, height: 24),
                      const SizedBox(height: 4),
                      const SizedBox(height: 4),
                      const Text(
                        'Projects',
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
        showInfo('Phone', "+959898609565", true),
        showInfo('Position', 'Senior Mobile Developer', true),
        showInfo('Year of Experience', '5 year', true),
        showInfo('Email', "thethninphyu7777@gmail.com", true),
        showInfo('Whatsapp', "+959898609565", true),
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
