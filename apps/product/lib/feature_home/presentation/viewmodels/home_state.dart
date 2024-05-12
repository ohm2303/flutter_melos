import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entitys/product.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required bool loading,
    required List<List<ProductToDisplay>> products,
    required List<String> categories
  }) = _HomeState;
}