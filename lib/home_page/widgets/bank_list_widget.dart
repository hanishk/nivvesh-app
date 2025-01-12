import 'package:flutter/material.dart';
import 'package:nivvesh/constants/images.dart';
import 'package:nivvesh/constants/text_styles.dart';
import 'package:nivvesh/home_page/screens/banks_list_page.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class BankCardWidget extends StatelessWidget {
  final bool showInstantWithdrawal;
  final bool showNoPenalty;
  final bool showNewlyAdded;

  const BankCardWidget(
      {super.key,
      required this.showInstantWithdrawal,
      required this.showNoPenalty,
      required this.showNewlyAdded});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 12),
        SizedBox(
          height: 300,
          width: 180,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.1),
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  margin: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          "https://static.toiimg.com/thumb/msid-113282986,imgsize-70690,width-400,resizemode-4/113282986.jpg",
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFFF9ECE3).withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 225,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 0.1),
                        left: BorderSide(color: Colors.grey, width: 0.1),
                        right: BorderSide(color: Colors.grey, width: 0.1),
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        Text(
                          "Suryoday SF Bank",
                          style: TextStyles.s16w600cBlack,
                        ),
                        if (showInstantWithdrawal) ...[
                          const SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.lightingPic,
                                height: 10,
                                width: 10,
                              ),
                              const SizedBox(width: 5),
                              Text("Instant withdrawal",
                                  style: TextStyles.s12w500cGrey),
                            ],
                          ),
                        ],
                        if (showNoPenalty) ...[
                          const SizedBox(height: 10),
                          Text("No withdrawal penalty",
                              style: TextStyles.s12w500cGrey),
                        ],
                        if (showNewlyAdded) ...[
                          const SizedBox(height: 10),
                          Shimmer(
                            duration: const Duration(seconds: 1),
                            child: Container(
                              width: 90,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color:
                                      const Color(0xffE0B0FF).withOpacity(0.5),
                                  border: Border.all(
                                      color: const Color(0xffCF9FFF))),
                              child: Center(
                                child: Text(
                                  "NEWLY ADDED",
                                  style: TextStyles.s10w500cPurple,
                                ),
                              ),
                            ),
                          )
                        ],
                        const Spacer(),
                        Text("up to", style: TextStyles.s10w500cGrey),
                        RichText(
                          text: TextSpan(
                              text: "90% ",
                              style: TextStyles.s20w700cBlack,
                              children: [
                                TextSpan(
                                    text: " p.a",
                                    style: TextStyles.s10w500cGrey)
                              ]),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                          child: Center(
                            child: Text("Know more",
                                style: TextStyles.s12w800cWhite),
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 50,
                    left: 15,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      height: 50,
                      width: 50,
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF9ECE3),
                            borderRadius: BorderRadius.circular(6)),
                        child: const Center(
                          child: Icon(
                            Icons.circle,
                            color: Colors.orange,
                            size: 40,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BankListWidget extends StatelessWidget {
  final String title;
  const BankListWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyles.s18w600cBlack,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BanksListPage(title: title)));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "View all",
                      style: TextStyles.s16w600cGrey,
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 12,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              ...List.generate(
                  5,
                  (index) => BankCardWidget(
                        showInstantWithdrawal: index == 0,
                        showNoPenalty: index == 1,
                        showNewlyAdded: index > 1,
                      )),
              const SizedBox(width: 12),
            ])),
      ],
    );
  }
}
