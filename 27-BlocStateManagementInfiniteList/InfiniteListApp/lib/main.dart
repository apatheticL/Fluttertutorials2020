import 'package:InfiniteListApp/blocs/comment_bloc.dart';
import 'package:InfiniteListApp/events/comment_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'infinite_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider(
        create: (context){
          final commentBloc = CommentBloc();
          commentBloc.add(CommentFetchedEvent);
        },
        child: InfiniteList(),
      )
    );
  }
}
