import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'sign_up_view_model.freezed.dart';

@freezed
class SignUpViewModelState with _$SignUpViewModelState {
  factory SignUpViewModelState({@Default('') String sample}) =
      _SignUpViewModelState;
}

final signUpViewModelProvider =
    StateNotifierProvider.autoDispose<SignUpViewModel>(
        (ref) => SignUpViewModel(ref.read));

class SignUpViewModel extends StateNotifier<SignUpViewModelState>
    with LocatorMixin {
  SignUpViewModel(
    this._read,
  ) : super(SignUpViewModelState()) {
    Future.delayed(Duration.zero, () async {});
  }

  final Reader _read;

  final emailKey = GlobalKey<FormFieldState<String>>();
  final passwordKey = GlobalKey<FormFieldState<String>>();

  Future<void> setOldData(String id) async {
    // if (result == null) {
    //   return null;
    // }
    //
    // String imagePath = '';
    //
    // if (result.field != null) {
    //   fieldKey.currentState?.didChange(kPointTextList[result.field - 1]);
    // }
    //
    // state = state.copyWith(imagePath: imagePath);
  }
}
