part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(MyAssets.assetsImagesNetflix).cornerRadius(20),
              20.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Latest Posts".text.size(16.h).make(),
                  "See All".text.size(16.h).make(),
                ],
              ),
              10.h.heightBox,
              ListView.separated(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      GestureDetector(
                        onTap: () => AutoRouter.of(context)
                            .push(const HomeDetailsRoute()),
                        child: Image.asset(
                          MyAssets.assetsImagesNetflix,
                          height: 120,
                          width: 180,
                          fit: BoxFit.cover,
                        ).cornerRadius(20),
                      ),
                      10.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Netflix Will Charge Money for Password Sharing "
                              .text
                              .maxLines(2)
                              .bold
                              .size(16.h)
                              .make(),
                          6.h.heightBox,
                          Row(
                            children: [
                              const Icon(FeatherIcons.clock),
                              "6 Months ago ".text.size(16).make(),
                            ],
                          ),
                          6.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              "59 Views ".text.size(16).make(),
                              const Icon(FeatherIcons.bookmark),
                            ],
                          ),
                        ],
                      ).expand(),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: 20.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
