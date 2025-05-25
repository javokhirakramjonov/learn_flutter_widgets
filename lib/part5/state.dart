import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:learn_widgets/part5/news.dart';
import 'package:learn_widgets/part5/request_state.dart';

part 'state.g.dart';

@CopyWith()
class NewsScreenState {
  final RequestState<List<News>> newsListRequestState;

  NewsScreenState({
    this.newsListRequestState = const RequestStateInitial(),
  });
}
