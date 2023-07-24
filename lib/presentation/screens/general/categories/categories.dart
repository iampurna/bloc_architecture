part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: "Categories".text.bold.size(26).make(),
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
              title: "Enter".text.size(16.sp).make(),
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
