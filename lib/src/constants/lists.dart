import 'package:pokerrrr_bloc/src/constants/image_asset.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';
import 'package:pokerrrr_bloc/src/models/onboarding.dart';

class Lists {
  static const List<OnBoarding> listOnboarding = [
    OnBoarding(
      image: ImageAsset.onBoardingFirst,
      title: Strings.titleOnBoardingFirst,
      subTitle: Strings.subTitleOnBoardingFirst,
      texButton: Strings.textOnBoardingFirstButton,
    ),
    OnBoarding(
      image: ImageAsset.onBoardingSecond,
      title: Strings.titleOnBoardingSecond,
      subTitle: Strings.subTitleOnBoardingSecond,
      texButton: Strings.textOnBoardingSecondButton,
    ),
  ];
  static const List<String> listIcon = [
    ImageAsset.iconNavigationOne,
    ImageAsset.iconNavigationTwo,
    ImageAsset.iconNavigationThree,
    ImageAsset.iconNavigationFour,
  ];
  static const List<String> listIconSelect = [
    ImageAsset.iconNavigationOneSelect,
    ImageAsset.iconNavigationTwoSelect,
    ImageAsset.iconNavigationThreeSelect,
    ImageAsset.iconNavigationFourSelect,
  ];
  static const List<String> listMenuName = [
    Strings.nameNavigationOne,
    Strings.nameNavigationTwo,
    Strings.nameNavigationThree,
    Strings.nameNavigationFour,
  ];
}
