import 'package:flutter/material.dart';
import 'package:nivvesh/home_page/screens/bottom_nav.dart';
import 'package:nivvesh/shared/common_button.dart';
import 'package:nivvesh/shared/common_scaffold.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 110),
            const Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'Roboto Mono',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFFDCB56D),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Sign in to access your investments.',
              style: TextStyle(
                fontFamily: 'Roboto Flex',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFFC3C3C3),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 49),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildInputField(
                  label: 'Phone no/Email Address',
                  hintText: 'Enter your phone/email',
                ),
                const SizedBox(height: 20),
                _buildInputField(
                  label: 'Password',
                  hintText: 'Enter password',
                  isPassword: true,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot your password?',
                  style: TextStyle(
                    fontFamily: 'Roboto Flex',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFC3C3C3),
                  ),
                ),
              ),
            ),
            const Spacer(),
            CommonButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
                text: 'Sign In'),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required String hintText,
    bool isPassword = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Roboto Flex',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xBFAD783D),
            height: 1.5,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: const Color(0xFFDCB56D),
              width: 0.5,
            ),
          ),
          child: TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                fontFamily: 'Roboto Flex',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF858585),
                height: 1.71,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
