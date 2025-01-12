import 'package:flutter/material.dart';

class GoldPriceCard extends StatelessWidget {
  final double price;
  final bool isUp;

  const GoldPriceCard({
    super.key,
    this.price = 10455,
    this.isUp = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 322,
      height: 49,
      decoration: BoxDecoration(
        color: const Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: const Color(0xFFDCB56D),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8),
          Image.network(
            'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWxF',
            width: 27.34,
            height: 27.34,
          ),
          const SizedBox(width: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Gold buy price: ',
                style: TextStyle(
                  fontFamily: 'Roboto Flex',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF222222),
                ),
              ),
              const SizedBox(width: 2),
              Image.network(
                'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWxG',
                width: 14,
                height: 14,
              ),
              const SizedBox(width: 2),
              Text(
                price.toStringAsFixed(0),
                style: TextStyle(
                  fontFamily: 'Roboto Flex',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2F3134),
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWxH',
                  width: 17.15,
                  height: 17.15,
                ),
                Image.network(
                  'https://dashboard.codeparrot.ai/api/assets/Z4PulVYBuQGDvWxI',
                  width: 8,
                  height: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

