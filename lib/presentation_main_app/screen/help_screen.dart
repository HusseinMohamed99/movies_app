part of './../../core/helpers/export_manager/export_manager.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorManager.charCoolColor,
        elevation: 0,
        title: Text(
          AppString.contactSupport,
          style: TextStyleManager.titleMedium(context: context),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.w, top: 20.h, bottom: 20.h),
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
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 200.h,
                    ),
                  ),
                ),
              ),
            ),
            const CardItem(
              title: 'Mail',
              url: 'mailto:hussein.mohmed1907@gmail.com',
              imageSvg: Assets.imagesGoogle,
            ),
            const CardItem(
              title: 'GitHub',
              url: 'https://github.com/HusseinMohamed99',
              imageSvg: Assets.imagesGithub,
            ),
            const CardItem(
              title: 'LinkedIn',
              url: 'https://www.linkedin.com/in/hussein99',
              imageSvg: Assets.imagesLinkedin,
            ),
            const CardItem(
              title: 'Google play',
              url:
                  'https://play.google.com/store/apps/dev?id=5842045484913788359',
              imageSvg: Assets.imagesGooglePlay,
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.title,
    required this.url,
    required this.imageSvg,
  });
  final String title;
  final String url;
  final String imageSvg;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        urlLauncher(
          Uri.parse(url),
        );
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 16.h),
        color: ColorManager.charCoolColor,
        clipBehavior: Clip.antiAlias,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15).r),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 22.r,
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(
                  imageSvg,
                  width: 30.w,
                  height: 30.h,
                ),
              ),
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyleManager.titleSmall(context: context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
