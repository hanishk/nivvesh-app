import 'package:flutter/material.dart';
import 'package:nivvesh/home_page/screens/fd_comparison.dart';
import 'package:nivvesh/home_page/widgets/fd_comparison.dart';

class FixedDepositCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onExplore;

  const FixedDepositCard({
    super.key,
    this.title = 'Fixed Deposits (FD)',
    this.description =
        'Guaranteed returns with flexible tenures starting at just ₹5,000.',
    this.onExplore,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const FDComparisonPage())),
      child: Container(
        width: 322,
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xFF2B2B2B),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto Flex',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFDCB56D),
                        ),
                      ),
                      Container(
                        width: 42,
                        height: 35,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWw8'),
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Center(
                          child: Image.network(
                            'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWw9',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: 209,
                    child: Text(
                      description,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFDADADA),
                        height: 1.57,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 148,
                          height: 35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWw-'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: onExplore,
                          child: const Text(
                            'Explore FD Plans',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 17,
              bottom: 33,
              child: Image.network(
                'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWw_',
                width: 147,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
