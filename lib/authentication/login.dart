import 'package:flutter/material.dart';
import 'package:nivvesh/authentication/signup.dart';
import 'package:nivvesh/home_page/screens/bottom_nav.dart';
import 'package:nivvesh/shared/common_button.dart';
import 'package:nivvesh/shared/common_scaffold.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
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
                const PasswordField(label: 'Password', hint: 'Enter password')
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
            isLoading
                ? const LoaderContainer()
                : CommonButton(
                    onTap: () async {
                      setState(() {
                        isLoading = true;
                      });
                      await Future.delayed(
                        const Duration(milliseconds: 500),
                      );
                      setState(() {
                        isLoading = false;
                      });
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
          label ?? '',
          style: TextStyle(
            fontFamily: 'Roboto Flex',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            height: 1.5,
            color: Color(0xFFAD783D).withOpacity(0.7),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          height: 45,
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: const Color(0xFFDCB56D),
              width: 0.5,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
          child: TextField(
            // controller: controller,
            style: const TextStyle(
              fontFamily: 'Roboto Flex',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 1.71,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                fontFamily: 'Roboto Flex',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                height: 1.71,
                color: Color(0xFF858585),
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
