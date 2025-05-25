import 'package:dio/dio.dart';
import 'package:learn_widgets/part5/news.dart';
import 'package:learn_widgets/part5/request_state.dart';

class NewsRepository {
  final Dio _dio;

  NewsRepository(this._dio);

  Future<RequestState<List<News>>> getNews() async {
    try {
      final response = await _dio
          .get('https://gnews.io/api/v4/top-headlines', queryParameters: {
        'token': '502fd523182f59858a588b74ef358af9',
        'lang': 'en',
      });

      final news = (response.data['articles'] as List)
          .map((e) => News.fromJson(e))
          .toList();

      return RequestStateSuccess(news);
    } catch (e) {
      return RequestStateError(
        'Failed to load news: ${e.toString()}',
      );
    }
  }
}
