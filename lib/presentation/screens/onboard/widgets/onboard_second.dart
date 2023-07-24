part of 'widgets_imports.dart';

class OnboardSecond extends StatelessWidget {
  const OnboardSecond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/onboarding1.png",
          height: 333.h,
          width: 333.w,
        ),
        "Customize your reading experience and join the conversation by creating an account."
            .text
            .align(TextAlign.center)
            .size(15.sp)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
