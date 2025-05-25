import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_widgets/part5/event.dart';
import 'package:learn_widgets/part5/news_repository.dart';
import 'package:learn_widgets/part5/request_state.dart';
import 'package:learn_widgets/part5/state.dart';

class NewsScreenBLoc extends Bloc<NewsScreenEvent, NewsScreenState> {
  final NewsRepository _newsRepository;

  NewsScreenBLoc(this._newsRepository) : super(NewsScreenState()) {
    on<LoadNewsEvent>(_onLoadNews);
  }

  Future<void> _onLoadNews(
      LoadNewsEvent event, Emitter<NewsScreenState> emit) async {
    emit(state.copyWith(newsListRequestState: const RequestStateLoading()));

    final response = await _newsRepository.getNews();

    emit(
      state.copyWith(newsListRequestState: response),
    );
  }
}
