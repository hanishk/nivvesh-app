import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nivvesh/calculators/fd_calculators.dart';
import 'package:nivvesh/constants/colors.dart';
import 'package:nivvesh/constants/images.dart';
import 'package:nivvesh/constants/themes.dart';
import 'package:nivvesh/home_page/screens/home_page.dart';
import 'package:nivvesh/profile/screens/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const FDCalculatorScreen(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: AppTheme.darkTheme.primaryColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            fixedColor: Colors.yellow.shade700,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages.homeIcon,
                  color: _currentIndex == 0
                      ? AppColors.kYellowColor
                      : AppColors.navBarUnSelectedItemColour,
                  height: 22,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: SvgPicture.asset(
                  AppImages.homeIcon,
                  color: _currentIndex == 1
                      ? AppColors.kYellowColor
                      : AppColors.navBarUnSelectedItemColour,
                  height: 22,
                ),
                label: 'Calculator',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: SvgPicture.asset(
                  AppImages.profileIcon,
                  color: _currentIndex == 2
                      ? AppColors.kYellowColor
                      : AppColors.navBarUnSelectedItemColour,
                  height: 22,
                ),
                label: 'My Profile',
              ),
            ]),
      ),
      body: SafeArea(child: _pages.elementAt(_currentIndex)),
    );
  }
}
