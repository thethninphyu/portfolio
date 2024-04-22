import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:open_store/open_store.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class BannerSlider extends StatefulWidget {
  final List<String> image;
  final String name;
  const BannerSlider({super.key, required this.image, required this.name});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  PreferredSizeWidget? getAppBar() {
    return AppBar(
      title: Text(
        widget.name,
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
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Swiper(
                outer: false,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0)),
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: AspectRatio(
                      aspectRatio: MediaQuery.of(context).size.width /
                          3.6 /
                          MediaQuery.of(context).size.width /
                          3.9 *
                          4,
                      child: InkWell(
                        child: Image.asset(
                          widget.image[index],
                          fit: BoxFit.contain,
                        ),
                        onTap: () {},
                      ),
                    ),
                  );
                },
                autoplay: true,
                itemCount: 3,
                viewportFraction: 0.8,
                scale: 0.9,
                pagination: const SwiperPagination(),
                control: const SwiperControl(),
                indicatorLayout: PageIndicatorLayout.COLOR,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (widget.name == "ShweTasin") {
                launchUrlForShwe("http://www.shwetasinshop.com/");
              } else if (widget.name == "Golden Crown") {
                launchUrlWithPackageId('com.nwt.goldencrown');
              } else if (widget.name == "Mom&Pop") {
                launchUrlWithPackageId('asia.momnpop.digitalshop');
              } else if (widget.name == "EZAY") {
                launchUrlWithPackageId('com.nwt.retail');
              } else if (widget.name == "ShweMi") {
                launchUrlWithPackageId('com.nwt.shwemisales');
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 200,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.sapphireBlue,
                    width: 0.3,
                    style: BorderStyle.solid,
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        "assets/svgs/playstore.svg",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      child: Column(
                        children: [
                          Text(
                            "GET IT ON",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text("Google Play",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  launchUrlForShwe(String s) async {
    Uri uri = Uri.parse(s);
    await launchUrl(uri);
  }

  void openPlayStore(String packageName) async {
    try {
      launchUrl(Uri.parse("market://details?id=$packageName"));
    } on PlatformException catch (e) {
      launchUrl(Uri.parse(
          "https://play.google.com/store/apps/details?id=$packageName"));
    } finally {
      launchUrl(Uri.parse(
          "https://play.google.com/store/apps/details?id=$packageName"));
    }
  }

  Future<void> launchUrlWithPackageId(String s) async {
    OpenStore.instance.open(
      androidAppBundleId: s, // Android app bundle package name]
    );
  }
}
