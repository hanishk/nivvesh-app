// import 'package:flutter/material.dart';
// import 'package:nivvesh/home_page/widgets/bank_list_widget.dart';
// import 'package:nivvesh/home_page/widgets/common_carousel.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//       body: const SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 510, child: CommonCarousel()),
//             SizedBox(height: 10),
//             BankListWidget(title: "Popular banks"),
//             BankListWidget(title: "All banks and NBFCs"),
//             BankListWidget(title: "Newly added banks"),
//             SizedBox(
//               height: 200,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:nivvesh/home_page/widgets/best_plan.dart';
import 'package:nivvesh/home_page/widgets/fixed_deposit_cards.dart';
import 'package:nivvesh/home_page/widgets/gold_price_details.dart';
import 'package:nivvesh/home_page/widgets/investment_card.dart';
import 'package:nivvesh/home_page/widgets/popular_banks.dart';
import 'package:nivvesh/shared/common_circular_progress.dart';
import 'package:nivvesh/shared/common_scaffold.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  Future<void> fetchData() async {
    isLoading = true;
    await Future.delayed(
      const Duration(milliseconds: 900),
    );
    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CustomCircularProgressIndicator(
              strokeWidth: 6.0,
              size: 50.0,
            ),
          )
        : CommonScaffold(
            title: 'Welcome Hanish',
            titleColor: Color(0xFFDCB56D),
            showIsLeadingIcon: false,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: SizedBox(
                        height: 145,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: const [
                            InvestmentCard(
                              amount: '₹12,50,000',
                              title: 'Total Investments',
                              subtitle: '+8.5% from last month',
                            ),
                            InvestmentCard(
                              amount: '₹8,00,000',
                              title: 'Fixed Deposits',
                              subtitle: '+6.8% avg. interest rate',
                            ),
                            InvestmentCard(
                              amount: '₹4,50,000',
                              title: 'Gold Investments',
                              subtitle: '+12% annual returns',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const FixedDepositCard(),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: const Text(
                        'Popular bank',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto Flex',
                        ),
                      ),
                    ),
                    PopularBanks(),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GoldPriceCard(),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildFeatureCard(
                              'Withdraw anytime',
                              'No hidden charges',
                              'https://dashboard.codeparrot.ai/api/assets/Z4PuyFYBuQGDvWxO'),
                          _buildFeatureCard(
                              'Save automatically',
                              '& leave the rest to us',
                              'https://dashboard.codeparrot.ai/api/assets/Z4PuyFYBuQGDvWxO'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: const [
                          Text(
                            'Get upto 9.6% in Fixed Deposit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto Flex',
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'No new Bank account needed',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontFamily: 'Roboto Flex',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: BestPlans(),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          );
  }

  Widget _buildFeatureCard(String title, String subtitle, String iconUrl) {
    return Column(
      children: [
        Image.network(
          iconUrl,
          width: 50,
          height: 50,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto Flex',
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontFamily: 'Roboto Flex',
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
