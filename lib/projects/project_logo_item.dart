import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/projects/banner_slider.dart';

class ProjectLogoItem extends StatefulWidget {
  final List<String> logoIamge;
  final int index;
  final List<String> appname;
  const ProjectLogoItem(
      {super.key,
      required this.logoIamge,
      required this.index,
      required this.appname});

  @override
  State<ProjectLogoItem> createState() => _ProjectLogoItemState();
}

class _ProjectLogoItemState extends State<ProjectLogoItem> {
  List<String> gcImage = [
    "assets/images/gc1.png",
    "assets/images/gc2.png",
    "assets/images/gc3.png"
  ];

  List<String> shweImage = [
    "assets/images/shwe1.jpg",
    "assets/images/shwe2.jpg",
    "assets/images/shwe3.jpg"
  ];

  List<String> ezayImage = [
    "assets/images/ezay1.png",
    "assets/images/ezay2.png",
    "assets/images/ezay3.png"
  ];

  List<String> mnpImage = [
    "assets/images/mnp1.png",
    "assets/images/mnp2.png",
    "assets/images/mnp3.png"
  ];

  List<String> shwemiImage = [
    "assets/images/shwemi1.png",
    "assets/images/shwemi1.png",
    "assets/images/shwemi1.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          child: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.sapphireBlue,
                  width: 0.3,
                  style: BorderStyle.solid,
                ),
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.sapphireBlue,
                        width: 0.1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                      child: Image.asset(
                        widget.logoIamge[widget.index],
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.contain,
                        height: 162,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            widget.appname[widget.index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: AppColors.sapphireBlue,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            if (widget.index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BannerSlider(image: shweImage, name: "ShweTasin")),
              );
            } else if (widget.index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BannerSlider(image: gcImage, name: "Golden Crown")),
              );
            } else if (widget.index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BannerSlider(image: mnpImage, name: "Mom&Pop")),
              );
            } else if (widget.index == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BannerSlider(image: ezayImage, name: "EZAY")),
              );
            } else if (widget.index == 4) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BannerSlider(image: shwemiImage, name: "ShweMi")),
              );
            }
          },
        ),
      ],
    );
  }
}
