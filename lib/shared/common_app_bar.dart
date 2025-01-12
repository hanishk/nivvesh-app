import 'package:flutter/material.dart';
import 'package:nivvesh/constants/colors.dart';

AppBar commonAppBar(BuildContext context,
    {required String title,
    bool? showIsLeadingIcon,
    bool? showCloseIcon = false,
    bool? showTransparentcolor = false,
    bool? isWhiteColor = false,
    List<Widget>? actionWidget}) {
  return AppBar(
    iconTheme: const IconThemeData(
      color: AppColors.whiteColour,
    ),
    backgroundColor: showTransparentcolor! ? Colors.transparent : null,
    title: Text(
      title,
      style:
          isWhiteColor! ? const TextStyle(color: AppColors.whiteColour) : null,
    ),
    leading: showIsLeadingIcon == false
        ? Container()
        : IconButton(
            splashRadius: 20,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              showCloseIcon! ? Icons.close : Icons.arrow_back_ios,
              color: isWhiteColor
                  ? AppColors.whiteColour
                  : AppColors.inputTextColor,
              size: 18,
            ),
          ),
    actions: actionWidget,
  );
}
