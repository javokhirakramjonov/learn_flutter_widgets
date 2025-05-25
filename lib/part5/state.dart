import 'package:learn_widgets/part5/news.dart';

class NewsScreenState {
  final List<News> newsList;
  final bool isLoading;

  NewsScreenState({this.newsList = const [], this.isLoading = false});
}