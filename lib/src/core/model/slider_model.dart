class SliderModel {
  final String title;
  final String subTitle;
  final String imageAssetPath;
  final String? description;

  SliderModel({
    required this.title,
    required this.subTitle,
    required this.imageAssetPath,
    this.description,
  });
}
