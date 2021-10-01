import 'package:base_app/models/genre/genre.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_state.freezed.dart';

@freezed
class GenreState with _$GenreState {
  factory GenreState({
    @Default(<Genre>[]) List<Genre> data,
  }) = _GenreState;
}
