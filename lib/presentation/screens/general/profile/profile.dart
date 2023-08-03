part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.logOut).pOnly(right: 10),
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 500,
            decoration: const BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(MyAssets.assetsImagesNetflix),
                  ),
                  10.h.heightBox,
                  "Purna Don".text.bold.xl2.white.make(),
                  "linkwithpurna@gmail.com".text.xl.white.make(),
                  20.h.heightBox,
                  "Purna Lungeli AKA (Lungeli) is a software engineer who is more passionate about technology. His ambition towards technology is huge"
                      .text
                      .xl
                      .center
                      .white
                      .make(),
                  20.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          "6".text.white.bold.xl3.make(),
                          "0 Posts".text.white.xl.make(),
                        ],
                      ),
                      Column(
                        children: [
                          "0".text.white.bold.xl3.make(),
                          "Following".text.white.xl.make(),
                        ],
                      ),
                      Column(
                        children: [
                          "0".text.white.bold.xl3.make(),
                          "Followers".text.white.xl.make(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          20.h.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "My Posts".text.xl3.bold.make(),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(MyAssets.assetsImagesNetflix)
                            .cornerRadius(10),
                        6.h.heightBox,
                        Row(
                          children: [
                            "Netflix will charge money for password sharing"
                                .text
                                .medium
                                .make()
                                .expand(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(FeatherIcons.moreVertical),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
