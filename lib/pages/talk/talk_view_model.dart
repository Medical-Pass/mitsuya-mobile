import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'talk_view_model.freezed.dart';

@freezed
class TalkViewModelState with _$TalkViewModelState {
  factory TalkViewModelState({@Default('') String sample}) =
      _TalkViewModelState;
}

final talkViewModelProvider = StateNotifierProvider.autoDispose<TalkViewModel>(
    (ref) => TalkViewModel(ref.read));

class TalkViewModel extends StateNotifier<TalkViewModelState>
    with LocatorMixin {
  TalkViewModel(
    this._read,
  ) : super(TalkViewModelState()) {
    Future.delayed(Duration.zero, () async {});
  }

  final Reader _read;
}
