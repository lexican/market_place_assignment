import 'package:market_place_assignment/gen/assets.gen.dart';
import 'package:market_place_assignment/src/core/model/category_model.dart';
import 'package:market_place_assignment/src/core/model/slider_model.dart';

List<SliderModel> slidersList = [
  SliderModel(
    title: "FASHION DAY",
    subTitle: "80% OFF",
    description: "Discover fashion that suits to your style",
    imageAssetPath: Assets.images.productImage1.path,
  ),
  SliderModel(
    title: "BEAUTYSALE",
    subTitle: "DISCOVER OUR BEAUTY SELECTION",
    imageAssetPath: Assets.images.productImage2.path,
  ),
  SliderModel(
    title: "FASHION DAY",
    subTitle: "80% OFF",
    description: "Discover fashion that suits to your taste",
    imageAssetPath: Assets.images.productImage3.path,
  ),
];

List<CategoryModel> catogories = [
  CategoryModel(
    title: "Category",
    iconPath: Assets.icons.category.path,
    isSvg: true,
  ),
  CategoryModel(
    title: "Flight",
    iconPath: Assets.images.plane.path,
  ),
  CategoryModel(
    title: "Bill",
    iconPath: Assets.images.bill.path,
  ),
  CategoryModel(
    title: "Data plan",
    iconPath: Assets.icons.globeIcon.path,
    isSvg: true,
  ),
  CategoryModel(
    title: "Top Up",
    iconPath: Assets.images.topup.path,
  ),
];
