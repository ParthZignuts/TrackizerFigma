import 'package:flutter/cupertino.dart';

class CustomButtonWithIcon extends StatelessWidget {

  final Color color;
  final String title;
  final TextStyle textStyle;
  final void Function()? onPressed;
  final String iconPath;

  const CustomButtonWithIcon({
    super.key,
    required this.color,
    required this.title,
    required this.onPressed,
    required this.textStyle,
    required this.iconPath,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width*1,
        child: Container(
          decoration: BoxDecoration(
            // backgroundBlendMode:BlendMode.softLight,
            boxShadow: [
               BoxShadow(color: color,blurRadius: 4.0,blurStyle: BlurStyle.outer),
               BoxShadow(color: color,blurRadius: 4.0,blurStyle: BlurStyle.inner),
               BoxShadow(color: color,blurRadius: 4.0,blurStyle: BlurStyle.solid),
            ],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: CupertinoButton(
            color: color,
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(iconPath,height: 20,width: 30,),
                Text(title,style: textStyle,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}