import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/commons/common_button.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/app_style.dart';
import 'package:pokerrrr_bloc/src/constants/image_asset.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';
import 'package:pokerrrr_bloc/src/ui/main_page/main_page_screen.dart';

class SelectionAuthenticationScreen extends StatelessWidget {
  const SelectionAuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 0.05.sh),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainPageScreen()),
                    (route) => false);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    Strings.next,
                    style: AppStyle.defaultText(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.arrow_forward, size: 27),
                  ),
                ],
              ),
            ),
            SizedBox(height: 0.1.sh),
            SizedBox(
              height: 0.35.sh,
              width: 1.sw,
              child: Image.asset(
                ImageAsset.selectionAuthentication,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                Strings.titleSelectionAuthentication,
                textAlign: TextAlign.center,
                style: AppStyle.defaultText(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                Strings.subTitleSelectionAuthentication,
                textAlign: TextAlign.center,
                style: AppStyle.defaultText(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 0.05.sh),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainPageScreen()),
                    (route) => false);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CommonButton(
                  label: Strings.signUpAuthentication,
                  labelColor: AppColors.ctaActiveText,
                  radius: 50,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainPageScreen()),
                    (route) => false);
              },
              child: const CommonButton(
                  backgroundColor: Colors.transparent,
                  label: Strings.loginAuthentication,
                  labelColor: AppColors.ctaOutlineText),
            ),
          ],
        ),
      ),
    );
  }
}
