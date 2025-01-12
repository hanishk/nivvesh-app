import 'package:flutter/material.dart';

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

  const CommonScaffold({
    Key? key,
    required this.body,
    this.title,
    this.actions,
    this.floatingActionButton,
    this.appBarBottom,
    this.centerTitle = true,
    this.titleColor = Colors.white,
    this.appBarBackgroundColor,
    this.elevation = 0.0,
  }) : super(key: key);

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
