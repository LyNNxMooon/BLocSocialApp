import 'package:bloc_social_app/BLoC/cubits/auth/auth_states.dart';
import 'package:bloc_social_app/data/vos/app_user_vo.dart';
import 'package:bloc_social_app/domain/auth_repository.dart';
import 'package:flutter/material.dart';
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

  //Get current User

  AppUserVO? get currentUser => _currentUser;

  //login user

  Future<void> login(
      String email, String password, BuildContext context) async {
    if (email.isNotEmpty && password.isNotEmpty) {
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
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Please enter both email and password"),
      ));
    }
  }

  //Register user

  Future<void> register(String name, String email, String password,
      String confirmPassword, BuildContext context) async {
    if (name.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Please fill out all the fields."),
      ));
    } else if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Passwords do not match."),
      ));
    } else {
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
  }

  //logout user

  Future<void> logout() async {
    authRepo.logout();
    emit(Unauthenticated());
  }
}
