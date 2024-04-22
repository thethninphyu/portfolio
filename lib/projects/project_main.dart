import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/projects/project_logo_item.dart';

class ProjectMain extends StatefulWidget {
  const ProjectMain({super.key});

  @override
  State<ProjectMain> createState() => _ProjectMainState();
}

class _ProjectMainState extends State<ProjectMain> {
  final scrollController = ScrollController();

  List<String> logoImage = [
    "assets/images/shwetasin.png",
    "assets/images/golden_crown.png",
    "assets/images/mnp_logo.png",
    "assets/images/ezay.png",
    "assets/images/shwemi.png"
  ];

  List<String> appName = [
    "ShweTasin",
    "Golden Crown",
    "Mom&Pop",
    "EZAY",
    "ShweMi"
  ];

  PreferredSizeWidget? getAppBar() {
    return AppBar(
      title: const Text(
        'Projects',
      ),
      automaticallyImplyLeading: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar(),
        body: Column(
          children: [
            //const BannerSlider(),
            const SizedBox(
              height: 16,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 20, top: 8),
              child: AlignedGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                itemCount: logoImage.length,
                scrollDirection: Axis.vertical,
                controller: scrollController,
                itemBuilder: (context, index) {
                  return ProjectLogoItem(
                      logoIamge: logoImage, index: index, appname: appName);
                },
              ),
            )),
          ],
        ));
  }
}
