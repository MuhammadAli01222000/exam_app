import 'package:exam_app/core/theme/colors.dart';
import 'package:exam_app/core/theme/dimens.dart';
import 'package:exam_app/core/theme/strings.dart';
import 'package:exam_app/core/widgets/app_text.dart';
import 'package:flutter/material.dart';

///rasmlar uchun card widgeti
class CustomCard extends StatefulWidget {
  final String imgPath;
  final int hours;
  final int minut;
  final String nameWhale;
  final String nameWhale2;
  const CustomCard({
    super.key,
    required this.imgPath,
    required this.hours,
    required this.nameWhale,
    required this.nameWhale2,
    required this.minut,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDimens.d10),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppDimens.d16),
                  ),
                  child: Image.asset(
                    widget.imgPath,
                    fit: BoxFit.fitWidth,
                    width: AppDimens.d400,
                    height: AppDimens.d200,
                  ),
                ),
                Positioned(
                  left: AppDimens.d300,
                  top: AppDimens.d16,
                  right: AppDimens.d16,
                  child: SizedBox(
                    width: AppDimens.d40,
                    height: AppDimens.d25,
                    child: Card(
                      color: AppColors.blue,
                      child: Text(
                        textAlign: TextAlign.center,
                        "${widget.hours} : ${widget.minut}",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: AppDimens.d130,
                  left: AppDimens.d10,
                  child: CustomText(
                    color: AppColors.white,
                    text: AppStrings.whale,
                    fontWeight: FontWeight.w400,
                    size: AppDimens.d26,
                  ),
                ),
                //     SizedBox(height: 40),
                Positioned(
                  top: AppDimens.d165,
                  left: AppDimens.d10,
                  child: const CustomText(
                    color: AppColors.white,
                    text: AppStrings.whale2,
                    fontWeight: FontWeight.w300,
                    size: AppDimens.d10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
