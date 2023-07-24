part of 'general_imports.dart';

@RoutePage()
class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  List<TabItem> items = const [
    TabItem(
      icon: FeatherIcons.home,
      // title: 'Home',
    ),
    TabItem(
      icon: FeatherIcons.tag,
      //title: 'Shop',
    ),
    TabItem(
      icon: FeatherIcons.plus,
      // title: 'Wishlist',
    ),
    TabItem(
      icon: FeatherIcons.hash,
      // title: 'Cart',
    ),
    TabItem(
      icon: FeatherIcons.user,
      // title: 'profile',
    ),
  ];
  int visit = 0;

  List<Widget> pages = const [
    Home(),
    Categories(),
    AddPosts(),
    Tags(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(visit),
      bottomNavigationBar: BottomBarCreative(
        items: items,
        backgroundColor: Colors.white.withOpacity(0.21),
        color: MyColors.primaryColor.withOpacity(0.3),
        colorSelected: MyColors.primaryColor,
        indexSelected: visit,
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
    );
  }
}
