import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:online_shop/data/repository/user_data_repository.dart';

import 'package:online_shop/domain/models/user/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState(user: User.defaultValue)) {
    on<UserInit>(_onUserCart);
    on<UserDefaultValueInit>(_onUserDefaultValueInit);
  }
  Future<void> _onUserCart(UserInit event, Emitter<UserState> emit) async {
    final User user = await UserDataRepository().getUser();

    emit(
      UserState(
        user: user,
      ),
    );
  }

  void _onUserDefaultValueInit(
      UserDefaultValueInit event, Emitter<UserState> emit)  {
    emit(
      UserState(
        user: User.defaultValue,
      ),
    );
  }
}
