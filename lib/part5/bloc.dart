import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_widgets/part5/event.dart';
import 'package:learn_widgets/part5/news.dart';
import 'package:learn_widgets/part5/state.dart';

class NewsScreenBLoc extends Bloc<NewsScreenEvent, NewsScreenState> {
  NewsScreenBLoc() : super(NewsScreenState()) {
    on<LoadNewsEvent>(_onLoadNews);
  }

  Future<void> _onLoadNews(
      LoadNewsEvent event,
      Emitter<NewsScreenState> emit
  ) async {
    final newState = NewsScreenState(
      newsList: state.newsList,
      isLoading: true
    );

    emit(newState);

    await Future.delayed(Duration(seconds: 3));

    final newState2 = NewsScreenState(
      newsList: List.generate(10, (index) => News(title: "News no: $index")),
      isLoading: false,
    );

    emit(newState2);
  }
}