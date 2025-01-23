import 'package:flutter/material.dart';
import 'package:nivvesh/constants/colors.dart';

class CommonScaffold extends StatelessWidget {
  final String? title;
  final List<Widget>? actions;
  final Widget body;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? appBarBottom;
  final bool centerTitle;
  final Color? titleColor;
  final Color? appBarBackgroundColor;
  final double? elevation;
  final bool? showIsLeadingIcon;

  const CommonScaffold({
    super.key,
    required this.body,
    this.title,
    this.actions,
    this.floatingActionButton,
    this.appBarBottom,
    this.centerTitle = true,
    this.titleColor = Colors.white,
    this.appBarBackgroundColor,
    this.elevation = 0.0,
    this.showIsLeadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor ?? Colors.transparent,
        elevation: elevation,
        title: title != null
            ? Text(
                title!,
                style:
                    TextStyle(color: titleColor, fontWeight: FontWeight.bold),
              )
            : null,
        centerTitle: centerTitle,
        actions: actions,
        bottom: appBarBottom,
        leading: showIsLeadingIcon == false
            ? Container()
            : IconButton(
                splashRadius: 20,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.whiteColour,
                  size: 18,
                ),
              ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(29, 21, 13, 0.85),
              Color.fromRGBO(15, 17, 21, 1),
            ],
          ),
        ),
        child: body,
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
