import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nivvesh/constants/images.dart';
import 'package:nivvesh/constants/text_styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CommonCarousel extends StatefulWidget {
  const CommonCarousel({super.key});

  @override
  State<CommonCarousel> createState() => _CommonCarouselState();
}

class _CommonCarouselState extends State<CommonCarousel> {
  int selectedIndex = 0;
  final colors = [Colors.red, Colors.amber, Colors.orange, Colors.pink];

  final gradients = [
    const LinearGradient(colors: [
      Color(0xfff4ebfe),
      Color(0xfff4ebfe),
      Color(0xfff4ebfe),
      Color(0xfff4ebfe),
      Color(0xfff4ebfe),
      Color(0xfff4ebfe),
      Color(0xfff4ebfe),
      Color(0xfff4ebfe),
      Color(0xfffafafa)
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
    const LinearGradient(colors: [
      Color(0xfffefaeb),
      Color(0xfffefaeb),
      Color(0xfffefaeb),
      Color(0xfffefaeb),
      Color(0xfffefaeb),
      Color(0xfffefaeb),
      Color(0xfffefaeb),
      Color(0xfffefaeb),
      Color(0xfffafafa)
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
  ];

  final imageGradients = [
    LinearGradient(colors: [
      const Color(0xfff4ebfe).withOpacity(0.1),
      const Color(0xfff4ebfe).withOpacity(0.3),
      const Color(0xfff4ebfe),
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
    LinearGradient(colors: [
      const Color(0xfffefaeb).withOpacity(0.1),
      const Color(0xfffefaeb).withOpacity(0.3),
      const Color(0xfffefaeb),
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient:
                  selectedIndex.isEven ? gradients.first : gradients.last),
        ),
        Column(
          children: [
            const SizedBox(height: 100),
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset(selectedIndex.isEven
                      ? AppImages.indianBankPic
                      : AppImages.hdfcBankPic),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: selectedIndex.isEven
                          ? imageGradients.first
                          : imageGradients.last),
                )
              ],
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                reverse: false,
                height: 160,
                autoPlay: true,
                enlargeCenterPage: false,
                viewportFraction: 0.9,
                onPageChanged: ((index, reason) {
                  setState(() {
                    selectedIndex = index;
                  });
                }),
              ),
              itemCount: colors.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return const CarouselCard();
              },
            ),
            AnimatedSmoothIndicator(
              activeIndex: selectedIndex,
              count: colors.length,
              effect: const ExpandingDotsEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  expansionFactor: 4,
                  activeDotColor: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.arrow_right_alt_rounded, color: Colors.grey),
            Text("GET UP TO ", style: TextStyles.s12w600cGrey),
            Text("9.50%", style: TextStyles.s30w800cBlack),
            Text(" ANNUALY", style: TextStyles.s12w600cGrey),
            const Icon(Icons.arrow_right_alt_rounded,
                textDirection: TextDirection.rtl, color: Colors.grey),
          ],
        ),
        const SizedBox(height: 20),
        Text("Highest FD rate on Stable Money",
            style: TextStyles.s20w700cBlack),
        const SizedBox(height: 10),
        Text("With Nort East Small Finance Bank",
            style: TextStyles.s15w600cGrey),
      ],
    );
  }
}
