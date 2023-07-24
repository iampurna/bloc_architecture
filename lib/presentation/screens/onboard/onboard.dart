part of 'onboard_imports.dart';

@RoutePage()
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  OnBoardViewModel onBoardViewModel = OnBoardViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  MyAssets.assetsImagesLogo,
                  color: MyColors.primaryColor,
                  height: 42.h,
                  width: 139.w,
                ),
                63.h.heightBox,
                PageView(
                  controller: onBoardViewModel.pageController,
                  children: const [
                    OnboardFirst(),
                    OnboardSecond(),
                    OnboardThird(),
                  ],
                ).expand(),
                61.h.heightBox,
                PrimaryButton(
                  title: "Get Started",
                  onPressed: () => AutoRouter.of(context).push(
                    const AuthRoute(),
                  ),
                ),
                SizedBox(height: 61.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Skip"
                        .text
                        .color(MyColors.primaryColor)
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    SmoothPageIndicator(
                        controller: onBoardViewModel.pageController,
                        count: 3,
                        effect: const WormEffect(
                          activeDotColor: MyColors.primaryColor,
                          dotHeight: 12.0,
                          dotWidth: 12.0,
                        ),
                        onDotClicked: (index) {}),
                    "Next"
                        .text
                        .color(MyColors.primaryColor)
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .make(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
