import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_shop/utils/colors.dart';
import 'package:nike_shop/widgets/custom_carousel_items.dart';
import 'package:nike_shop/widgets/custom_notices_sliders.dart';
import 'package:nike_shop/widgets/custom_shop_button.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_value.dart';
import '../widgets/custom_shoes_items.dart';

class ProductsPage extends StatelessWidget {
  static const String routeName = "/productspage";

  const ProductsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: AppBar(
                toolbarHeight: 70,
                backgroundColor: AppColor.white,
                leadingWidth: 100,
                leading: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Center(child: SvgPicture.asset("assets/images/logo.svg"))),
                title: const ResponsiveVisibility(
                  hiddenConditions: [Condition.smallerThan(name: DESKTOP)],
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New & Featured",
                        style: TextStyle(color: AppColor.textColor, fontSize: 17),
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Text(
                        "Men",
                        style: TextStyle(color: AppColor.textColor, fontSize: 17),
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Text(
                        "Women",
                        style: TextStyle(color: AppColor.textColor, fontSize: 17),
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Text(
                        "Kids",
                        style: TextStyle(color: AppColor.textColor, fontSize: 17),
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Text(
                        "Accessories",
                        style: TextStyle(color: AppColor.textColor, fontSize: 17),
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Text(
                        "Sale",
                        style: TextStyle(color: AppColor.textColor, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                elevation: 0,
                actions: const [
                  ResponsiveVisibility(
                    hiddenConditions: [
                      Condition.largerThan(name: TABLET),
                    ],
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: AppColor.iconColor,
                          size: 24,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: AppColor.iconColor,
                          size: 24,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.menu,
                          color: AppColor.iconColor,
                          size: 24,
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  ResponsiveVisibility(
                    hiddenConditions: [
                      Condition.smallerThan(name: TABLET),
                      Condition.equals(name: TABLET)
                    ],
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: AppColor.iconColor,
                          size: 24,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: AppColor.iconColor,
                          size: 24,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: AppColor.iconColor,
                          size: 24,
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 80,
                color: AppColor.notificationColor,
                child: const Padding(padding: EdgeInsets.only(top: 20.0), child: NoticesCarousel()),
              ),
            ),
            SliverAppBar(
              backgroundColor: AppColor.white,
              floating: false,
              pinned: true,
              expandedHeight: ResponsiveValue(context, conditionalValues: [
                const Condition.smallerThan(name: TABLET, value: 150.0),
                const Condition.largerThan(name: TABLET, value: 80.0)
              ]).value,
              collapsedHeight: ResponsiveValue(context, conditionalValues: [
                const Condition.smallerThan(name: TABLET, value: 150.0),
                const Condition.largerThan(name: TABLET, value: 80.0)
              ]).value,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                    margin: const EdgeInsets.only(left: 27),
                    child: ResponsiveRowColumn(
                      rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                      rowCrossAxisAlignment: CrossAxisAlignment.center,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnMainAxisAlignment: MainAxisAlignment.spaceAround,
                      layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                          ? ResponsiveRowColumnType.ROW
                          : ResponsiveRowColumnType.COLUMN,
                      children: [
                        ResponsiveRowColumnItem(
                            rowFlex: 1,
                            columnFlex: 1,
                            child: Text("Men",
                                style: TextStyle(
                                    fontSize: ResponsiveValue(context, conditionalValues: [
                                      const Condition.smallerThan(name: TABLET, value: 20.0),
                                      const Condition.largerThan(name: TABLET, value: 26.0)
                                    ]).value,
                                    letterSpacing: 1,
                                    color: AppColor.textColor))),
                        ResponsiveRowColumnItem(
                          rowFlex: 2,
                          columnFlex: 1,
                          child: Row(
                            children: [
                              Text("Shoes",
                                  style: TextStyle(
                                      fontSize: fontSize(context).value,
                                      letterSpacing: 1,
                                      color: AppColor.textColor)),
                              const SizedBox(
                                width: 40,
                              ),
                              Text("Clothing",
                                  style: TextStyle(
                                      fontSize: fontSize(context).value,
                                      letterSpacing: 1,
                                      color: AppColor.textColor)),
                              const SizedBox(
                                width: 40,
                              ),
                              Text("Accessories",
                                  style: TextStyle(
                                      fontSize: fontSize(context).value,
                                      letterSpacing: 1,
                                      color: AppColor.textColor)),
                              const SizedBox(
                                width: 40,
                              ),
                              Text("Sale",
                                  style: TextStyle(
                                      fontSize: fontSize(context).value,
                                      letterSpacing: 1,
                                      color: AppColor.textColor)),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              // Replace with your content
            ),
            SliverToBoxAdapter(
                child: Container(
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResponsiveVisibility(
                    hiddenConditions: const [Condition.smallerThan(name: TABLET)],
                    child: Image.asset("assets/images/runlandscape.webp"),
                  ),
                  ResponsiveVisibility(
                    hiddenConditions: const [Condition.largerThan(name: TABLET)],
                    child: Image.asset("assets/images/run.webp"),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  ResponsiveVisibility(
                      hiddenConditions: const [Condition.smallerThan(name: TABLET)],
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 450),
                        child: Column(children: [
                          const Text(
                            "THE PEGASUS 40 CELEBRATES ITS PAST",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 100.0),
                            child: Text(
                              "Featuring throwback colors and Swooshes plucked from iconic Pegasus releases",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                height: 1.4,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 38,
                          ),
                          CustomShopButton(
                            bttitle: "Shop",
                            bgcolor: AppColor.textColor,
                            textcolor: AppColor.white,
                          ),
                        ]),
                      )),
                  ResponsiveVisibility(
                      hiddenConditions: const [Condition.largerThan(name: TABLET)],
                      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                        const Text(
                          "THE PEGASUS 40 CELEBRATES ITS PAST",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const Text(
                          "Featuring throwback colors and Swooshes plucked from iconic Pegasus releases",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(
                          height: 38,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 270),
                          child: CustomShopButton(
                            bttitle: "Shop",
                            bgcolor: AppColor.textColor,
                            textcolor: AppColor.white,
                          ),
                        ),
                      ])),
                  const SizedBox(
                    height: 110,
                  ),
                  const Text(
                    "Shop the Essentials",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, letterSpacing: 1),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  ResponsiveVisibility(
                    hiddenConditions: const [Condition.smallerThan(name: TABLET)],
                    child: Row(children: [
                      Flexible(
                        flex: 1,
                        child: Stack(alignment: Alignment.bottomLeft, children: [
                          Image.asset(
                            "assets/images/hoodie.webp",
                            height: 1250,
                          ),
                          Positioned(
                            left: 60,
                            top: 1060,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Clothing",
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: AppColor.textColor,
                                        fontWeight: FontWeight.w500)),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomShopButton(
                                    bttitle: "Shop",
                                    bgcolor: AppColor.textColor,
                                    textcolor: AppColor.white)
                              ],
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Stack(alignment: Alignment.bottomLeft, children: [
                              Image.asset(
                                "assets/images/shoes.webp",
                                height: 600,
                              ),
                              Positioned(
                                top: 480,
                                left: 30,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text("Shoes",
                                        style: TextStyle(
                                            fontSize: 23,
                                            color: AppColor.textColor,
                                            fontWeight: FontWeight.w500)),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    CustomShopButton(
                                        bttitle: "Shop",
                                        bgcolor: AppColor.textColor,
                                        textcolor: AppColor.white)
                                  ],
                                ),
                              ),
                            ]),
                            Stack(alignment: Alignment.bottomLeft, children: [
                              Image.asset(
                                "assets/images/bag.webp",
                                height: 600,
                              ),
                              Positioned(
                                top: 480,
                                left: 30,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text("Accessories",
                                        style: TextStyle(
                                            fontSize: 23,
                                            color: AppColor.textColor,
                                            fontWeight: FontWeight.w500)),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    CustomShopButton(
                                        bttitle: "Shop",
                                        bgcolor: AppColor.textColor,
                                        textcolor: AppColor.white)
                                  ],
                                ),
                              ),
                            ]),
                          ],
                        ),
                      )
                    ]),
                  ),
                  ResponsiveVisibility(
                    hiddenConditions: const [Condition.largerThan(name: MOBILE)],
                    child: CarouselSlider(
                        items: [
                          CarouselItems(
                            imagename: "assets/images/hoodie.webp",
                            itemname: "Clothing",
                            bgcolor: const Color(0xfff2f2f2),
                          ),
                          CarouselItems(
                            imagename: "assets/images/shoes.webp",
                            itemname: "Shoes",
                            bgcolor: const Color(0xfff6f6f6),
                          ),
                          CarouselItems(
                            imagename: "assets/images/bag.webp",
                            itemname: "Accessories",
                            bgcolor: const Color(0xfff6f6f6),
                          )
                        ],
                        options: CarouselOptions(
                            height: 500,
                            disableCenter: true,
                            enableInfiniteScroll: true,
                            autoPlay: false,
                            autoPlayAnimationDuration: const Duration(seconds: 1))),
                  ),
                  const SizedBox(
                    height: 112,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Right Now",
                        style: TextStyle(
                            color: AppColor.textColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1),
                      ),
                      Text(
                        "Shop All",
                        style: TextStyle(
                            color: AppColor.textColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CarouselSlider(
                      items: [
                        ShoesCarouselWidget(
                            shoespic: "assets/images/sblow.webp",
                            shoesname: "Nike Dunk Low",
                            shoestype: "Men's Shoes",
                            shoesprice: "\$110"),
                        ShoesCarouselWidget(
                            shoespic: "assets/images/umptemp0.webp",
                            shoesname: "Nike Air More Uptempo '96",
                            shoestype: "Men's Shoes",
                            shoesprice: "\$180"),
                        ShoesCarouselWidget(
                            shoespic: "assets/images/lebron.webp",
                            shoesname: "LeBron NXXT Gen",
                            shoestype: "Basketball Shoes",
                            shoesprice: "\$160"),
                        ShoesCarouselWidget(
                            shoespic: "assets/images/pregasus.webp",
                            shoesname: "Nike Pegasus 40",
                            shoestype: "Men's Road Running Shoes",
                            shoesprice: "\$130"),
                        ShoesCarouselWidget(
                            shoespic: "assets/images/invincible.webp",
                            shoesname: "Nike Invincible 3",
                            shoestype: "Men's Road Running Shoes",
                            shoesprice: "\$180"),
                        ShoesCarouselWidget(
                            shoespic: "assets/images/aflow.webp",
                            shoesname: "Nike Air Force 1 '07",
                            shoestype: "Men's Shoes",
                            shoesprice: "\$110"),
                        ShoesCarouselWidget(
                            shoespic: "assets/images/jordanlow.webp",
                            shoesname: "Air Jordan 1 Low",
                            shoestype: "Men's Shoes",
                            shoesprice: "\$110"),
                        ShoesCarouselWidget(
                            shoespic: "assets/images/jordanlowG.webp",
                            shoesname: "Air Jordan 1 Low G",
                            shoestype: "Golf Shoes",
                            shoesprice: "\$140"),
                        ShoesCarouselWidget(
                            shoespic: "assets/images/airmax.webp",
                            shoesname: "Nike Air Max 90",
                            shoestype: "Men's Shoes",
                            shoesprice: "\$130"),
                      ],
                      options: CarouselOptions(
                          height: 500,
                          viewportFraction:
                              ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? 0.3 : 0.8,
                          disableCenter: true,
                          enableInfiniteScroll: true,
                          autoPlay: false,
                          autoPlayAnimationDuration: const Duration(seconds: 1))),
                  const SizedBox(
                    height: 112,
                  ),
                  const Text(
                    "Trending",
                    style: TextStyle(
                        color: AppColor.textColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  ResponsiveRowColumn(
                    layout: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                        ? ResponsiveRowColumnType.ROW
                        : ResponsiveRowColumnType.COLUMN,
                    children: [
                      ResponsiveRowColumnItem(
                        rowFit: FlexFit.tight,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Image.asset("assets/images/banner1.webp"),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 50.0, left: 25),
                              child: Text(
                                "New Styles of Air Max",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0, bottom: 7),
                              child: CustomShopButton(
                                  bttitle: "Shop",
                                  bgcolor: AppColor.white,
                                  textcolor: AppColor.textColor),
                            )
                          ],
                        ),
                      ),
                      const ResponsiveRowColumnItem(
                        child: SizedBox(
                          width: 10,
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        rowFit: FlexFit.tight,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Image.asset("assets/images/banner2.webp"),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 50.0, left: 25),
                              child: Padding(
                                padding: EdgeInsets.only(right: 150.0),
                                child: Text(
                                  "The Latest from Nike Basketball",
                                  style: TextStyle(
                                      fontSize: 23,
                                      color: AppColor.textColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0, bottom: 7),
                              child: CustomShopButton(
                                  bttitle: "Shop",
                                  bgcolor: AppColor.textColor,
                                  textcolor: AppColor.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  //

                  const SizedBox(
                    height: 106,
                  ),
                  const Text(
                    "More to Explore",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, letterSpacing: 1),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CarouselSlider(
                      items: [
                        CarouselItems(
                          imagename: "assets/images/run.jpg",
                          itemname: "Workout Essentials",
                          bgcolor: Colors.transparent,
                        ),
                        CarouselItems(
                          imagename: "assets/images/golf.jpg",
                          itemname: "Gear Up For Golf",
                          bgcolor: Colors.transparent,
                        ),
                        CarouselItems(
                          imagename: "assets/images/tennis.webp",
                          itemname: "Gear Up For Tennis",
                          bgcolor: Colors.transparent,
                        ),
                        CarouselItems(
                          imagename: "assets/images/swim.webp",
                          itemname: "Nike Swim",
                          bgcolor: Colors.transparent,
                        ),
                        CarouselItems(
                          imagename: "assets/images/grad.webp",
                          itemname: "Gifts for Grads",
                          bgcolor: Colors.transparent,
                        )
                      ],
                      options: CarouselOptions(
                          height: 420,
                          disableCenter: true,
                          viewportFraction:
                              ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? 0.3 : 1.3,
                          enableInfiniteScroll: true,
                          autoPlay: false,
                          autoPlayAnimationDuration: const Duration(seconds: 1))),
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Icons for Any Season",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, letterSpacing: 1),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CarouselSlider(
                      items: [
                        CarouselItems(
                          imagename: "assets/images/airforce1.webp",
                          itemname: "Workout Essentials",
                          bgcolor: Colors.transparent,
                          status: false,
                        ),
                        CarouselItems(
                          imagename: "assets/images/blazer.webp",
                          itemname: "Nike Blazers",
                          bgcolor: Colors.transparent,
                          status: false,
                        ),
                        CarouselItems(
                          imagename: "assets/images/zoom.webp",
                          itemname: "Pegasus Running Shoes",
                          bgcolor: Colors.transparent,
                          status: false,
                        ),
                      ],
                      options: CarouselOptions(
                          height: 420,
                          disableCenter: true,
                          enlargeFactor: 0.5,
                          viewportFraction:
                              ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? 0.3 : 0.8,
                          enableInfiniteScroll: true,
                          autoPlay: false,
                          autoPlayAnimationDuration: const Duration(seconds: 1))),
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Nike Membership",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, letterSpacing: 1),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ResponsiveBreakpoints.of(context).equals(MOBILE)
                      ? Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Image.asset("assets/images/soosh.png"),
                            Positioned(
                              left: 10,
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 26),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "BECOME A \nMEMBER",
                                      style: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 50,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    const Text(
                                      "Sign Up For Free. Join The Community",
                                      style: TextStyle(
                                          fontSize: 16, color: AppColor.white, wordSpacing: 1),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Row(
                                      children: [
                                        CustomShopButton(
                                            bttitle: "Join Us",
                                            bgcolor: AppColor.white,
                                            textcolor: AppColor.textColor),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CustomShopButton(
                                            bttitle: "Sign In",
                                            bgcolor: AppColor.white,
                                            textcolor: AppColor.textColor),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomStart,
                              children: [
                                Image.asset(
                                  "assets/images/custom.jpg",
                                  width: MediaQuery.of(context).size.width / 2 - 30,
                                ),
                                Positioned(
                                  left: 10,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 26),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "BECOME A \nMEMBER",
                                          style: TextStyle(
                                              color: AppColor.white,
                                              fontSize: 50,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        const Text(
                                          "Sign Up For Free. Join The Community",
                                          style: TextStyle(
                                              fontSize: 16, color: AppColor.white, wordSpacing: 1),
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: [
                                            CustomShopButton(
                                                bttitle: "Join Us",
                                                bgcolor: AppColor.white,
                                                textcolor: AppColor.textColor),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            CustomShopButton(
                                                bttitle: "Sign In",
                                                bgcolor: AppColor.white,
                                                textcolor: AppColor.textColor),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: AlignmentDirectional.bottomStart,
                              children: [
                                Image.asset(
                                  "assets/images/nikeGirl.jpg",
                                  width: MediaQuery.of(context).size.width / 2 - 30,
                                ),
                                Positioned(
                                  left: 10,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 26),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "ENJOY EXCLUSIVE BENEFITS",
                                          style: TextStyle(
                                              color: AppColor.white,
                                              fontSize: 50,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        const Text(
                                          "Your exclusive access",
                                          style: TextStyle(
                                              fontSize: 16, color: AppColor.white, wordSpacing: 1),
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: [
                                            CustomShopButton(
                                                bttitle: "Shop",
                                                bgcolor: AppColor.white,
                                                textcolor: AppColor.textColor),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                  const SizedBox(
                    height: 55,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Men's Shoes",
                        style: TextStyle(fontSize: 16, color: AppColor.textColor),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      Text(
                        "Men's Clothing",
                        style: TextStyle(fontSize: 16, color: AppColor.textColor),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      Text(
                        "Men's Gear",
                        style: TextStyle(fontSize: 16, color: AppColor.textColor),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      Text(
                        "Featured",
                        style: TextStyle(fontSize: 16, color: AppColor.textColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 52,
                  ),
                ],
              ),
            )),
            SliverToBoxAdapter(
              child: Container(
                height: 800,
                color: AppColor.textColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 23.0, top: 37, right: 23),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "GIFT CARDS",
                        style: TextStyle(
                            color: AppColor.white, fontWeight: FontWeight.w900, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "PROMOTIONS",
                        style: TextStyle(
                            color: AppColor.white, fontWeight: FontWeight.w900, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "FIND A STORE",
                        style: TextStyle(
                            color: AppColor.white, fontWeight: FontWeight.w900, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "BECOME A MEMBER",
                        style: TextStyle(
                            color: AppColor.white, fontWeight: FontWeight.w900, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "NIKE JOURNAL",
                        style: TextStyle(
                            color: AppColor.white, fontWeight: FontWeight.w900, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "SEND US FEEDBACK",
                        style: TextStyle(
                            color: AppColor.white, fontWeight: FontWeight.w900, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "GET HELP",
                            style: TextStyle(
                                color: AppColor.white, fontWeight: FontWeight.w900, fontSize: 14),
                          ),
                          Icon(
                            Icons.add,
                            color: AppColor.white,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 66,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "ABOUT NIKE",
                            style: TextStyle(
                                color: AppColor.white, fontWeight: FontWeight.w900, fontSize: 14),
                          ),
                          Icon(
                            Icons.add,
                            color: AppColor.white,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 66,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xff7e7e7e),
                            child: SvgPicture.asset(
                              "assets/images/tt.svg",
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            backgroundColor: const Color(0XFF7e7e7e),
                            child: SvgPicture.asset(
                              "assets/images/fb.svg",
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            backgroundColor: const Color(0XFF7e7e7e),
                            child: SvgPicture.asset(
                              "assets/images/yt.svg",
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            backgroundColor: const Color(0XFF7e7e7e),
                            child: SvgPicture.asset(
                              "assets/images/ig.svg",
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColor.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "United States",
                            style: TextStyle(
                                color: AppColor.white, fontSize: 13, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "© 2023 Nike, Inc. All Rights Reserved ",
                        style: TextStyle(color: Color.fromARGB(255, 114, 114, 114), fontSize: 12),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "Guides",
                        style: TextStyle(color: Color.fromARGB(255, 112, 112, 112), fontSize: 13),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Terms of Sale",
                        style: TextStyle(color: Color.fromARGB(255, 112, 112, 112), fontSize: 13),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Terms of Use",
                        style: TextStyle(color: Color.fromARGB(255, 113, 113, 113), fontSize: 13),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Nike Privacy Poilicy",
                        style: TextStyle(color: Color.fromARGB(255, 109, 107, 107), fontSize: 13),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Your Privacy Choices",
                        style: TextStyle(color: Color.fromARGB(255, 109, 107, 107), fontSize: 13),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "CA Supply Chains Act",
                        style: TextStyle(color: Color.fromARGB(255, 109, 107, 107), fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  ResponsiveValue<double> fontSize(BuildContext context) {
    return ResponsiveValue(context, conditionalValues: [
      const Condition.smallerThan(name: TABLET, value: 16.0),
      const Condition.largerThan(name: TABLET, value: 18.0)
    ]);
  }
}
