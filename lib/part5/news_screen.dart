import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_widgets/part5/bloc.dart';
import 'package:learn_widgets/part5/event.dart';
import 'package:learn_widgets/part5/news.dart';
import 'package:learn_widgets/part5/news_details_screen.dart';
import 'package:learn_widgets/part5/news_repository.dart';
import 'package:learn_widgets/part5/request_state.dart';
import 'package:learn_widgets/part5/state.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocProvider(
        create: (_) =>
            NewsScreenBLoc(NewsRepository(Dio()))..add(LoadNewsEvent()),
        child: BlocBuilder<NewsScreenBLoc, NewsScreenState>(
            builder: (context, state) {
          final newsListRequestState = state.newsListRequestState;

          return switch (newsListRequestState) {
            RequestStateInitial<List<News>>() =>
              Text("Nothing has happened yet"),
            RequestStateSuccess<List<News>>() =>
              _buildNews(context, newsListRequestState.data),
            RequestStateLoading<List<News>>() =>
              Center(child: CircularProgressIndicator()),
            RequestStateError<List<News>>() => Column(
                children: [
                  Text(
                    newsListRequestState.message,
                    style: TextStyle(color: Colors.red),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<NewsScreenBLoc>().add(LoadNewsEvent());
                    },
                    child: Text("Retry"),
                  )
                ],
              ),
          };
        }),
      )),
    );
  }

  Widget _buildNews(BuildContext context, List<News> newsList) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<NewsScreenBLoc>().add(LoadNewsEvent());
      },
      child: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        separatorBuilder: (context, index) => Divider(),
        itemCount: newsList.length,
        itemBuilder: (context, index) => _buildNewsItem(
          context,
          newsList[index],
          () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => NewsDetailsScreen(
                  news: newsList[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildNewsItem(BuildContext context, News news, VoidCallback onTap) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Image.network(news.imageUrl,
                loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ));
            }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                news.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(news.description),
            ),
          ],
        ),
      ),
    );
  }
}
