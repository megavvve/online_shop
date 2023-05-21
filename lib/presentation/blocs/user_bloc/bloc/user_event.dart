part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}
class UserInit extends UserEvent{
  @override
  List<Object> get props => [];
}
class UserDefaultValueInit extends UserEvent{
  @override
  List<Object> get props => [];
}