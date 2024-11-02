import 'package:bloc_social_app/BLoc/cubits/auth/auth_states.dart';
import 'package:bloc_social_app/data/vos/app_user_vo.dart';
import 'package:bloc_social_app/domain/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthStates> {
  final AuthRepo authRepo;

  AppUserVO? _currentUser;

  AuthCubit({required this.authRepo}) : super(AuthInitial());

  void checkAuth() async {
    final AppUserVO? user = await authRepo.getCurrentUser();

    if (user != null) {
      _currentUser = user;
      emit(Authenticated(user));
    } else {
      emit(Unauthenticated());
    }
  }

  AppUserVO? get currentUser => _currentUser;

  Future<void> login(String email, String password) async {
    try {
      emit(AuthLoading());

      final user = await authRepo.loginWithEmailAndPassword(email, password);

      if (user != null) {
        _currentUser = user;
        emit(Authenticated(user));
      } else {
        Unauthenticated();
      }
    } catch (error) {
      emit(AuthError(error.toString()));
      emit(Unauthenticated());
    }
  }

  Future<void> register(String name, String email, String password) async {
    try {
      emit(AuthLoading());

      final user = await authRepo.registerAppUser(name, email, password);

      if (user != null) {
        _currentUser = user;
        emit(Authenticated(user));
      } else {
        Unauthenticated();
      }
    } catch (error) {
      emit(AuthError(error.toString()));
      emit(Unauthenticated());
    }
  }

  Future<void> logout() async {
    authRepo.logout();
    emit(Unauthenticated());
  }
}
