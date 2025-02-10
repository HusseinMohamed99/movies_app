part of './../../export_manager/export_manager.dart';

Map<AppTheme, ThemeData> getThemeData(BuildContext context) => {
      AppTheme.darkTheme: ThemeData(
        scaffoldBackgroundColor: ColorManager.charCoolColor,
        primaryColor: ColorManager.charCoolColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: ColorManager.charCoolColor,
          ),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: ColorManager.greyDarkColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ).r,
          ),
        ),
        textTheme: TextTheme(
          bodySmall: buildTextStyle(
            context: context,
            fontSize: 8.sp,
            color: ColorManager.greyColor,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: ColorManager.primaryGreenColor,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(
            size: 30.sp,
            color: ColorManager.primaryGreenColor,
          ),
          unselectedIconTheme: IconThemeData(
            size: 24.sp,
            color: ColorManager.whiteColor,
          ),
          selectedLabelStyle: TextStyle(
            color: ColorManager.primaryGreenColor,
          ),
          selectedItemColor: ColorManager.primaryGreenColor,
        ),
      ),
    };
