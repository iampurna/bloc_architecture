part of 'add_posts_imports.dart';

class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {
  QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Add Post".text.white.bold.make(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FeatherIcons.check,
              color: MyColors.white,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        children: [
          20.h.heightBox,
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.network(
                  "https://image.shutterstock.com/image-vector/ui-image-placeholder-wireframes-apps-260nw-1037719204.jpg"),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FeatherIcons.camera,
                  color: MyColors.primaryColor,
                ),
              ),
            ],
          ),
          20.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10.0,
            hint: "title",
          ),
          20.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10.0,
            hint: "slug",
          ),
          20.h.heightBox,
          Container(
            height: 60,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Tags".text.make(),
                const Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
          20.h.heightBox,
          Container(
            height: 60,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Categories".text.make(),
                const Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
          20.h.heightBox,
          QuillToolbar.basic(controller: _controller),
          SizedBox(
            height: 500,
            child: QuillEditor.basic(
              controller: _controller,
              readOnly: false,
            ),
          ),
        ],
      ),
    );
  }
}
