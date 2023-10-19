import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../const/text_style.dart';

class CustomLoadingScreen extends StatelessWidget {
  final String title;

  const CustomLoadingScreen({
    Key? key,
    this.title = '잠시만 기다려 주세요.',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColor.barrier,
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    color: MyColor.primary,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  title,
                  style: MyTextStyle.description,
                ),
                const SizedBox(width: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
