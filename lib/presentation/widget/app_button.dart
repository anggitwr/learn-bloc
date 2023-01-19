import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_bloc/config/theme/app_color.dart';
import 'package:learn_bloc/config/theme/app_font.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      this.type = PrimaryButtonType.type1,
      required this.onPressed,
      required this.text,
      this.width = 78})
      : super(key: key);

  final PrimaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == PrimaryButtonType.type1
        ? _type1()
        : type == PrimaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      width: width,
      height: 34,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink02,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
          text,
          style: AppFont.textnormal.copyWith(color: AppColor.ink06),
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: width.w,
      height: 44.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink02,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
          text,
          style: AppFont.textnormal.copyWith(color: AppColor.ink06),
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width,
      height: 54,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink02,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          text,
          style: AppFont.textnormal.copyWith(color: AppColor.ink06),
        ),
      ),
    );
  }
}

enum PrimaryButtonType { type1, type2, type3 }
