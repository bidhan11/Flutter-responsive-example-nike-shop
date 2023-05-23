import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_shop/utils/colors.dart';
import 'package:nike_shop/widgets/custom_carousel_items.dart';

import '../widgets/custom_shoes_items.dart';

class ProductsPage extends StatelessWidget {
  static const String routeName = "/productspage";
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
                elevation: 0,
                actions: const [
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
            SliverToBoxAdapter(
              child: Container(
                height: 80,
                color: AppColor.notificationColor,
                child: const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 10, right: 10),
                  child: Text(
                      "As of 5/24, Free Member Shipping Available for Orders \$50 and above.",
                      textAlign: TextAlign.center),
                ),
              ),
            ),
            SliverAppBar(
              backgroundColor: AppColor.white,
              floating: false,
              pinned: true,
              expandedHeight: 150,
              collapsedHeight: 150,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  margin: const EdgeInsets.only(left: 27),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 38,
                      ),
                      const Text(
                        "Men",
                        style:
                            TextStyle(fontSize: 24, letterSpacing: 2.4, color: AppColor.textColor),
                      ),
                      const SizedBox(
                        height: 38,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Shoes",
                            style: TextStyle(
                                fontSize: 15, letterSpacing: 1, color: AppColor.textColor),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            "Clothing",
                            style: TextStyle(
                                fontSize: 15, letterSpacing: 1, color: AppColor.textColor),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            "Accessories",
                            style: TextStyle(
                                fontSize: 15, letterSpacing: 1, color: AppColor.textColor),
                          ),
                          SizedBox(width: 35),
                          Text(
                            "Sale",
                            style: TextStyle(
                                fontSize: 15, letterSpacing: 1, color: AppColor.textColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Replace with your content
            ),
            SliverToBoxAdapter(
                child: Container(
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/run.webp"),
                  const SizedBox(
                    height: 26,
                  ),
                  const Text(
                    "THE PEGASUS 40 CELEBRATES ITS PAST",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        letterSpacing: 0.1,
                        height: 1,
                        fontSize: 45,
                        fontWeight: FontWeight.w900,
                        color: AppColor.textColor),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 50.0),
                    child: Text(
                      "Featuring throwback colors and Swooshes plucked from iconic Pegasus releases",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.4,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: AppColor.textColor, borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Text(
                        "Shop",
                        style: TextStyle(
                            color: AppColor.white, fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
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
                  CarouselSlider(
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
                  const SizedBox(
                    height: 112,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
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
                          disableCenter: true,
                          enableInfiniteScroll: true,
                          autoPlay: false,
                          autoPlayAnimationDuration: const Duration(seconds: 1)))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
