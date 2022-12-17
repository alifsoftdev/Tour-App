import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toure_app/ui/style/textStyle.dart';
import '../../../const/AppColor.dart';

class VioletButton extends StatelessWidget {
  String title;
  final Function onAction;
  VioletButton(this.title,this.onAction);
  RxBool _value = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          _value.value = true;
          onAction();
        },
        child: Container(
          height: 45,
          decoration: BoxDecoration(
              color: AppColor.blue,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: _value == false
              ? Center(
                  child: Text(
                    title,
                    style: textStyle.style_m_17white,
                  ),
                )
              : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Please wait',
                        style: textStyle.style_m_17white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Transform.scale(scale: 0.5,child: CircularProgressIndicator(
                      color: AppColor.white,
                    ))
                  ],
                ),
        ),
      ),
    );
  }
}

// Widget textbutton(onPressed, String title) {
//   return TextButton(onPressed: onPressed, child: Text(title));
// }

// Widget iconbutton(onPressed, icon) {
//   return IconButton(onPressed: onPressed, icon: Icon(icon));
// }
// Widget fullWidthButton(
//   String title,
//   onPressed,
// ) {
//   return ElevatedButton(
//     onPressed: onPressed,
//     style: ElevatedButton.styleFrom(
//         backgroundColor: AppColor.blue,
//         fixedSize: Size(double.maxFinite, 45),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
//     child: Text(title),
//   );
// }
