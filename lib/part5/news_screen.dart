import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_widgets/part5/bloc.dart';
import 'package:learn_widgets/part5/event.dart';
import 'package:learn_widgets/part5/state.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
        BlocProvider(
          create: (_) => NewsScreenBLoc()..add(LoadNewsEvent()),
          child: BlocBuilder<NewsScreenBLoc, NewsScreenState>(builder: (context, state) {
            if(state.isLoading) {
              return Center(child: CircularProgressIndicator());
            }

            return ListView.builder(
              itemCount: state.newsList.length,
              itemBuilder: (context, index) {
                return Text(state.newsList[index].title);
              }
            );
          }
                ),
        )
      ),
    );
  }
}
