import '../../core/Constant/app_string.dart';
import '../../core/Constant/names.dart';

class UnbordingContent {
  String image;
  String title;
  String secTitle;
  String discription;

  UnbordingContent(
      {required this.image,
      required this.title,
      required this.discription,
      required this.secTitle});
}

List sherif = [];
List<UnbordingContent> contents = [
  UnbordingContent(
      title: AppString.sendandrecive,
      secTitle: AppString.quickly,
      image: Names.animationOne,
      discription: AppString.decone),
  UnbordingContent(
      title: AppString.sendwhateveru,
      secTitle: AppString.want,
      image: Names.animationTwo,
      discription: AppString.dectwo),
  UnbordingContent(
      title: AppString.allfiles,
      secTitle: AppString.rsafe,
      image: Names.animationOne,
      discription: AppString.decthree),
];
