part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          //bottom: false,
          child: FadedScaleAnimation(
            child: Column(
              children: [
                Image.asset(
                  MyAssets.assetsImagesJournoLogo,
                  height: 42.h,
                  width: 139.w,
                ).centered(),
                100.h.heightBox,
                Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        50.h.heightBox,
                        "Register"
                            .text
                            .size(18.0)
                            .color(MyColors.primaryColor)
                            .fontWeight(FontWeight.w700)
                            .makeCentered(),
                        48.h.heightBox,
                        "Email".text.make(),
                        8.heightBox,
                        const VxTextField(
                          hint: "suii@gmail.com",
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10.0,
                          prefixIcon: Icon(Icons.email),
                        ),
                        20.h.heightBox,
                        "Password".text.make(),
                        8.heightBox,
                        const VxTextField(
                          isPassword: true,
                          obscureText: true,
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10.0,
                          prefixIcon: Icon(Icons.lock),
                        ),
                        20.h.heightBox,
                        "Confirm Password".text.make(),
                        8.heightBox,
                        const VxTextField(
                          isPassword: true,
                          obscureText: true,
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10.0,
                          prefixIcon: Icon(Icons.lock),
                        ),
                        20.h.heightBox,
                        Row(
                          children: [
                            SizedBox(
                              width: 250,
                              child: CheckboxListTile(
                                contentPadding: EdgeInsets.zero,
                                value: false,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (value) {},
                                title: "Remember Me".text.make(),
                              ),
                            ),
                            "Forgot Password".text.size(14).make(),
                          ],
                        ),
                        40.h.heightBox,
                        PrimaryButton(
                          title: "Login",
                          onPressed: () {},
                        ),
                        20.h.heightBox,
                        "Already Have an account?"
                            .richText
                            .semiBold
                            .color(MyColors.primaryColor)
                            .size(14)
                            .withTextSpanChildren([
                          TextSpan(
                            text: "Login",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => AutoRouter.of(context).push(
                                    const LoginRoute(),
                                  ),
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ]).makeCentered(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
