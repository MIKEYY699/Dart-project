import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarWash extends StatelessWidget {
  const CarWash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123.h,
      width: 222.w,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20.r),
      ),
    );
  }
}
