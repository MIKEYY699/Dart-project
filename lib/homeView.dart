import 'package:flutter/material.dart';
import 'package:flutter_application_1/FavouriteView.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height: 20.h,
          width: 20.w,

          child: SvgPicture.asset(
            "assets/timer.svg",
            height: 20.h,
            width: 20.w,
          ),
        ),
        title: Text('Home View'),
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        surfaceTintColor: Colors.white,
        elevation: 30,
      ),
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 400.h,
              width: 400.w,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 200.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 200.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      height: 200.h,
                      width: 200.w,
                      decoration: BoxDecoration(color: Colors.blue),
                    ),
                    Container(
                      height: 200.h,
                      width: 200.w,
                      decoration: BoxDecoration(color: Colors.amber),
                    ),
                    Container(
                      height: 200.h,
                      width: 200.w,
                      decoration: BoxDecoration(color: Colors.purple),
                    ),
                    Container(
                      height: 200.h,
                      width: 200.w,
                      decoration: BoxDecoration(color: Colors.pink),
                    ),

                    Container(
                      height: 200.h,
                      width: 200.w,
                      decoration: BoxDecoration(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavouriteView()),
                  );
                },
                child: Text("push "),
              ),
            ),
            SizedBox(height: 100.h),
            TextField(
              keyboardType: TextInputType.phone,

              controller: nameController,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 188, 247, 247),
                // focusColor: const Color.fromARGB(255, 11, 4, 3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),

                  borderSide: BorderSide(color: Colors.red, width: 2.w),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(color: Colors.yellow, width: 2),
                ),

                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 235, 10, 10),
                    width: 2,
                  ),
                ),

                hintText: 'Enter your name',
              ),
              onChanged: (text) {
                setState(() {});
              },
            ),

            Text(nameController.text),
          ],
        ),
      ),
    );
  }
}
