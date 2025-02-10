part of '../../export_manager/export_manager.dart';

TextStyle buildTextStyle({
  required BuildContext context,
  required double fontSize,
  Color? color,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    fontSize: getResponsiveFontSize(
      context,
      fontSize: fontSize.sp,
    ),
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color ?? ColorManager.whiteColor,
  );
}

abstract class TextStyleManager {
  static TextStyle headlineSmall({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 24.sp),
    );
  }

  static TextStyle titleLarge({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 22.sp),
    );
  }

  static TextStyle titleMedium({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16.sp),
    );
  }

  static TextStyle titleSmall({required BuildContext context, Color? color}) {
    return TextStyle(
      color: color ?? ColorManager.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14.sp),
    );
  }

  static TextStyle labelMedium({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 12.sp),
    );
  }

  static TextStyle labelSmall({required BuildContext context, Color? color}) {
    return TextStyle(
      color: color ?? ColorManager.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 11.sp),
    );
  }

  static TextStyle bodySmall({required BuildContext context}) {
    return TextStyle(
      color: ColorManager.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 8.sp),
    );
  }
}
