part of 'widgets_imports.dart';

class OnboardThird extends StatelessWidget {
  const OnboardThird({
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
        "Explore a wide selection of categories, or use the search bar to find specific topics"
            .text
            .align(TextAlign.center)
            .size(15.sp)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
