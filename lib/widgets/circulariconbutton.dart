import 'package:flutter/material.dart';
import 'package:wallpaperapp/constants/constants.dart';

class CircularIconButton extends StatelessWidget {
  Function()? onpressed;
  String iconname;
  Icon icon;
  Color color;

  CircularIconButton({this.onpressed,required this.iconname,required this.icon,required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 25.0,
          child: IconButton(
            onPressed: onpressed,
            icon: icon
          ),
        ),
        Text('$iconname',style: kIconButtonText,)
      ],
    );
  }
}
