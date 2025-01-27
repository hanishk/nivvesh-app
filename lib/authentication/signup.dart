import 'package:flutter/material.dart';
import 'package:nivvesh/authentication/login.dart';
import 'package:nivvesh/authentication/otp_verify.dart';
import 'package:nivvesh/shared/common_button.dart';
import 'package:nivvesh/shared/common_scaffold.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _phoneController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    const SizedBox size40 = SizedBox(height: 40);
    const SizedBox size20 = SizedBox(height: 20);
    return CommonScaffold(
      showIsLeadingIcon: false,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 74),
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
            _buildInputField(label: 'Name', hint: 'Enter your full name'),
            size20,
            _buildInputField(label: 'Email Address', hint: 'Enter your email'),
            size20,
            _buildInputField(
                label: 'Mobile Number',
                hint: 'Enter your mobile number',
                controller: _phoneController),
            size20,
            const PasswordField(
              label: "Password",
              hint: "Enter your password",
            ),
            size40,
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
                          builder: (context) => OtpVerification(
                                phoneNumber: _phoneController.text,
                              )));
                    },
                    text: 'Sign Up Now'),
            size20,
            const Divider(color: Color(0xFFDCB56D)),
            // size20,
            // _buildGoogleButton(),
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

  Widget _buildInputField(
      {String? label, String? hint, TextEditingController? controller}) {
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
            controller: controller,
            style: const TextStyle(
              fontFamily: 'Roboto Flex',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 1.71,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: hint,
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
          const SizedBox(width: 10),
          const Text(
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

class PasswordField extends StatefulWidget {
  final String label;
  final String hint;

  const PasswordField({super.key, required this.label, required this.hint});

  @override
  PasswordFieldState createState() => PasswordFieldState();
}

class PasswordFieldState extends State<PasswordField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            fontFamily: 'Roboto Flex',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            height: 1.5,
            color: const Color(0xFFAD783D).withOpacity(0.7),
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
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  obscureText: !_isPasswordVisible,
                  style: const TextStyle(
                    fontFamily: 'Roboto Flex',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.71,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: widget.hint,
                    hintStyle: const TextStyle(
                      fontFamily: 'Roboto Flex',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      height: 1.71,
                      color: Color(0xFF858585),
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 9,
                      vertical: 8,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: const Color(0xFF858585),
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
