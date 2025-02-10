part of './../../core/helpers/export_manager/export_manager.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: 60.h,
              bottom: 20.h,
            ),
            child: CircleAvatar(
              maxRadius: 52.r,
              minRadius: 52.r,
              backgroundColor: ColorManager.primaryGreenColor,
              child: CircleAvatar(
                maxRadius: 50.r,
                minRadius: 50.r,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50).r,
                  child: Image.asset(
                    Assets.imagesLogo,
                  ),
                ),
              ),
            ),
          ),
          Text(
            appName,
            style: TextStyleManager.titleLarge(context: context),
          ),
          const Space(width: 0, height: 30),
          SettingCardItem(
            title: AppString.appPolicy,
            icon: Icons.info_outline,
            onTap: () async {
              await appPolicy();
            },
          ),
          const Space(width: 0, height: 8),
          SettingCardItem(
            title: AppString.contactSupport,
            icon: Icons.help_outline,
            onTap: () {
              context.pushNamed(Routes.supportScreen);
            },
          ),
          const Space(width: 0, height: 8),
          const SettingCardItem(
            title: AppString.rating,
            icon: Icons.star_outline,
            onTap: goToApplicationOnPlayStore,
          ),
          const Spacer(),
          Text(
            'Version: $appVersion',
            style: TextStyleManager.labelSmall(context: context),
          ),
          const Space(width: 0, height: 20),
        ],
      ),
    );
  }

  Future<void> appPolicy() async {
    String url =
        'https://drive.google.com/file/d/1qIvMxdkYUaJXj01EwtQpXvd6xTgASDvP/view?usp=sharing';
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}

void goToApplicationOnPlayStore() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  String url = '';
  String packageName = packageInfo.packageName;
  if (Platform.isAndroid) {
    url = 'https://play.google.com/store/apps/details?id=$packageName';
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}

class SettingCardItem extends StatelessWidget {
  const SettingCardItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });
  final VoidCallback onTap;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 8.h),
        color: ColorManager.charCoolColor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15).r,
        ),
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(10).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 22.r,
                backgroundColor: const Color.fromRGBO(105, 155, 247, 0.15),
                child: Icon(
                  icon,
                  size: 26.sp,
                  color: ColorManager.primaryGreenColor,
                ),
              ),
              const Space(width: 35, height: 0),
              Text(
                title,
                style: TextStyleManager.titleMedium(context: context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
