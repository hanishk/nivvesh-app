import 'package:flutter/material.dart';

class PopularBanks extends StatelessWidget {
  final List<BankData> banks;

  const PopularBanks({
    super.key,
    this.banks = const [
      BankData(
        name: 'State bank of India',
        interestRate: '8.50%',
        image: 'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWxA',
      ),
      BankData(
        name: 'ICICI Bank',
        interestRate: '7.25%',
        image: 'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWxB',
      ),
      BankData(
        name: 'Axis Bank',
        interestRate: '9.80%',
        image: 'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWxC',
      ),
      BankData(
        name: 'Punjab National Bank',
        interestRate: '8.50%',
        image: 'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWxD',
      ),
    ],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: banks.map((bank) => _buildBankCard(bank)).toList(),
      ),
    );
  }

  Widget _buildBankCard(BankData bank) {
    return Container(
      width: 150,
      height: 193,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.network(
              bank.image,
              width: 150,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bank.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto Flex',
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Return up to',
                  style: TextStyle(
                    color: Color(0xFFDADADA),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto Flex',
                  ),
                ),
                Row(
                  children: [
                    Text(
                      bank.interestRate,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto Flex',
                      ),
                    ),
                    const SizedBox(width: 4),
                    Image.network(
                      'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWxE',
                      width: 18,
                      height: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BankData {
  final String name;
  final String interestRate;
  final String image;

  const BankData({
    required this.name,
    required this.interestRate,
    required this.image,
  });
}
