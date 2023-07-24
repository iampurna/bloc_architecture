part of 'tags_imports.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: "Tags".text.bold.size(26).make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.plus),
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: 20.h),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: "${index + 1}".text.size(16.sp).make(),
              title: "Tags".text.size(16.sp).make(),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FeatherIcons.edit,
                        color: Colors.green,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FeatherIcons.trash,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
