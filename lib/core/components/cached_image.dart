part of './../helpers/export_manager/export_manager.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    this.imageUrl,
    this.width,
    this.height,
    this.boxFit,
  });

  final String? imageUrl;
  final double? height;
  final double? width;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl?.isNotEmpty == true
          ? imageUrl!
          : "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
      height: height?.h,
      width: width?.w,
      fit: boxFit ?? BoxFit.cover,
      placeholder: (_, __) => Center(
        child: SpinKitDoubleBounce(
          color: ColorManager.primaryGreenColor,
          duration: Duration(milliseconds: 3000),
          size: 50.0,
        ),
      ),
      errorWidget: (_, __, ___) => Center(
        child: SvgPicture.asset(
          Assets.imagesError,
          fit: BoxFit.fitWidth,
          width: width,
          height: 60.h,
        ),
      ),
    );
  }
}
