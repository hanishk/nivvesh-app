import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nivvesh/shared/common_button.dart';
import 'package:nivvesh/shared/common_scaffold.dart';

class OtpVerification extends StatefulWidget {
  final String phoneNumber;

  const OtpVerification({super.key, this.phoneNumber = '+91 XXXXX XXXXX'});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final List<TextEditingController> _controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );

  final List<FocusNode> _focusNodes = List.generate(
    6,
    (index) => FocusNode(),
  );

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onOtpSubmit() {
    String otp = _controllers.map((c) => c.text).join();
    if (otp.length == 6) {
      // widget.onVerify(otp);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 110),
            Text(
              'Verify Your Account',
              style: TextStyle(
                fontFamily: 'Roboto Mono',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 1.5,
                color: Color(0xFFDCB56D),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'We\'ve sent a 6-digit OTP to your registered mobile number (${widget.phoneNumber}). Please enter it below to proceed.',
              style: TextStyle(
                fontFamily: 'Roboto Flex',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFFC3C3C3),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                6,
                (index) => Container(
                  width: 37,
                  height: 38,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFDCB56D)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextField(
                    controller: _controllers[index],
                    focusNode: _focusNodes[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFDCB56D),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 5) {
                        _focusNodes[index + 1].requestFocus();
                      } else if (value.isEmpty && index > 0) {
                        _focusNodes[index - 1].requestFocus();
                      }
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              // onTap: widget.onResendOtp,
              child: RichText(
                text: TextSpan(
                  text: 'Didn\'t receive the code? ',
                  style: TextStyle(
                    fontFamily: 'Roboto Flex',
                    fontSize: 16,
                    color: Color(0xFFC3C3C3),
                  ),
                  children: [
                    TextSpan(
                      text: 'Resend OTP',
                      style: TextStyle(
                        color: Color(0xFFDCB56D),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            CommonButton(onTap: () {}, text: 'Verify OTP'),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

// Example usage:
// OtpVerification(
//   phoneNumber: '+91 98765 43210',
//   onVerify: (String otp) {
//     print('Verifying OTP: $otp');
//   },
//   onResendOtp: () {
//     print('Resending OTP');
//   },
// )
