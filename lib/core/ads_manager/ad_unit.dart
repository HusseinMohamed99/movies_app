class AdUnit {
  static bool isAdTest = false;
  static String homeBanner = isAdTest
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-4479962845986675/6709924757';
  static String addOpen = isAdTest
      ? 'ca-app-pub-3940256099942544/9257395921'
      : 'ca-app-pub-4479962845986675/3076742019';

  static String interstitialAd = isAdTest
      ? 'ca-app-pub-3940256099942544/1033173712'
      : 'ca-app-pub-4479962845986675/9242657120';

  static String rewardedAd = isAdTest
      ? 'ca-app-pub-3940256099942544/5224354917'
      : 'ca-app-pub-4479962845986675/3247260261';
}
