import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'sign_in_view_model.freezed.dart';

@freezed
class SignInViewModelState with _$SignInViewModelState {
  factory SignInViewModelState({@Default('') String sample}) =
      _SignInViewModelState;
}

final signInViewModelProvider =
    StateNotifierProvider.autoDispose<SignInViewModel>(
        (ref) => SignInViewModel(ref.read));

class SignInViewModel extends StateNotifier<SignInViewModelState>
    with LocatorMixin {
  SignInViewModel(
    this._read,
  ) : super(SignInViewModelState()) {
    Future.delayed(Duration.zero, () async {});
  }

  final emailKey = GlobalKey<FormFieldState<String>>();
  final passwordKey = GlobalKey<FormFieldState<String>>();

  final Reader _read;
}
