import 'package:flutter/cupertino.dart';

class CupertinoCustomButton extends StatelessWidget {

  final Color color;
  final String btnTitle;
  final TextStyle textStyle;
  final void Function()? onBtnPress;
  final String imgSrc;

  const CupertinoCustomButton({
    super.key,
    required this.color,
    required this.btnTitle,
    required this.onBtnPress,
    required this.textStyle,
    required this.imgSrc,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width*1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: CupertinoButton(
            color: color,
            onPressed: onBtnPress,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(imgSrc,height: 20,width: 30,),
                Text(btnTitle,style: textStyle,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}