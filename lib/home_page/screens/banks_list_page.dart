import 'package:flutter/material.dart';
import 'package:nivvesh/constants/text_styles.dart';
import 'package:nivvesh/home_page/widgets/bank_list_widget.dart';

class BanksListPage extends StatelessWidget {
  final String title;
  const BanksListPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                      ),
                    ),
                  ),
                  Text(
                    title.toUpperCase(),
                    style: TextStyles.s14w600cDarkGrey,
                  ),
                  const SizedBox(
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: TextStyles.s20w700cBlack),
                          const SizedBox(height: 10),
                          Text(
                            "$title on Stable Money",
                            style: TextStyles.s14w600cDarkGrey,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 12,
                      runSpacing: 20,
                      children: List.generate(
                        11,
                        (index) => SizedBox(
                          width: (MediaQuery.of(context).size.width - 18) / 2,
                          child: BankCardWidget(
                            showInstantWithdrawal: index == 0,
                            showNoPenalty: index == 1,
                            showNewlyAdded: index > 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 200),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
