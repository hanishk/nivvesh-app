import 'package:flutter/material.dart';
import 'package:nivvesh/authentication/login.dart';
import 'package:nivvesh/authentication/otp_verify.dart';
import 'package:nivvesh/shared/common_button.dart';
import 'package:nivvesh/shared/common_scaffold.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    const SizedBox size40 = SizedBox(height: 40);
    const SizedBox size20 = SizedBox(height: 20);
    return CommonScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 76),
            const Text(
              'Create Your Account',
              style: TextStyle(
                fontFamily: 'Roboto Mono',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                height: 1.5,
                color: Color(0xFFDCB56D),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Start your journey to secure and smart investments with nivvesh.com.',
              style: TextStyle(
                fontFamily: 'Roboto Flex',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                height: 1.5,
                color: Color(0xFFC3C3C3),
              ),
            ),
            size40,
            _buildInputField('Name', 'Enter your full name'),
            size20,
            _buildInputField('Email Address', 'Enter your email'),
            size20,
            _buildInputField('Mobile Number', 'Enter your mobile number'),
            size20,
            _buildInputField('Password', 'Create a password'),
            size40,
            CommonButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OtpVerification()));
                },
                text: 'Sign Up Now'),
            size20,
            const Divider(color: Color(0xFFDCB56D)),
            size20,
            _buildGoogleButton(),
            size20,
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      fontFamily: 'Roboto Flex',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          color: Color(0xFFDCB56D),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Roboto Flex',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            height: 1.5,
            color: Color(0xFFAD783D).withOpacity(0.7),
          ),
        ),
        SizedBox(height: 4),
        Container(
          height: 45,
          decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Color(0xFFDCB56D),
              width: 0.5,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 9, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                fontFamily: 'Roboto Flex',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                height: 1.71,
                color: Color(0xFF858585),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGoogleButton() {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.31),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://dashboard.codeparrot.ai/api/assets/Z4PdmFYBuQGDvWvj',
            width: 24,
            height: 24,
          ),
          SizedBox(width: 10),
          Text(
            'Continue with Google',
            style: TextStyle(
              fontFamily: 'Roboto Flex',
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xFFE3E3E3),
            ),
          ),
        ],
      ),
    );
  }
}
