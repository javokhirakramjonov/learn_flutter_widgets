import 'package:flutter/material.dart';
import 'package:learn_widgets/part5/news.dart';

class NewsDetailsScreen extends StatelessWidget {
  final News news;

  const NewsDetailsScreen({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(news.imageUrl),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(news.content),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Go Back'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
