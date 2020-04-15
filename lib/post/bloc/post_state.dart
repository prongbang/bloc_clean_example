import 'package:equatable/equatable.dart';

abstract class PostState extends Equatable {}

class PostLoading extends PostState {
  @override
  List<Object> get props => [];
}

class PostLoaded extends PostState {
  final List<dynamic> items;

  PostLoaded(this.items);

  @override
  List<Object> get props => [items];
}

class PostError extends PostState {
  @override
  List<Object> get props => [];
}
