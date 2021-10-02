import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'search_detail_view_model.freezed.dart';

@freezed
class SearchDetailViewModelState with _$SearchDetailViewModelState {
  factory SearchDetailViewModelState({@Default('') String sample}) =
      _SearchDetailViewModelState;
}

final searchDetailViewModelProvider =
    StateNotifierProvider.autoDispose<SearchDetailViewModel>(
        (ref) => SearchDetailViewModel(ref.read));

class SearchDetailViewModel extends StateNotifier<SearchDetailViewModelState>
    with LocatorMixin {
  SearchDetailViewModel(
    this._read,
  ) : super(SearchDetailViewModelState()) {
    Future.delayed(Duration.zero, () async {});
  }

  final Reader _read;
}
