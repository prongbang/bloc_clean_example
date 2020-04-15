import 'package:equatable/equatable.dart';

abstract class PostEvent extends Equatable {}

class FetchPost extends PostEvent {
  @override
  List<Object> get props => [];
}
