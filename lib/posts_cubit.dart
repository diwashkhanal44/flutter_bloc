import 'package:bloc_practice/data_service.dart';
import 'package:bloc_practice/post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<List<Post>> {
  final _dataService = DataService();
  PostsCubit() : super([]);
  void getPosts() async => emit(await _dataService.getPosts());
}
