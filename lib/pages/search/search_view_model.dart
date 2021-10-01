import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'search_view_model.freezed.dart';

@freezed
class SearchViewModelState with _$SearchViewModelState {
  factory SearchViewModelState({@Default('') String sample}) =
      _SearchViewModelState;
}

final searchViewModelProvider =
    StateNotifierProvider.autoDispose<SearchViewModel>(
        (ref) => SearchViewModel(ref.read));

class SearchViewModel extends StateNotifier<SearchViewModelState>
    with LocatorMixin {
  SearchViewModel(
    this._read,
  ) : super(SearchViewModelState()) {
    Future.delayed(Duration.zero, () async {});
  }

  final Reader _read;
}
