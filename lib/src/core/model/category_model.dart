class CategoryModel {
  final String title;
  final String iconPath;
  final bool isSvg;

  CategoryModel({
    required this.title,
    required this.iconPath,
    this.isSvg = false,
  });
}
