import 'package:flutter/material.dart';
import 'package:nivvesh/shared/common_app_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar:
            commonAppBar(context, title: 'Profile', showIsLeadingIcon: false),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text('My Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
